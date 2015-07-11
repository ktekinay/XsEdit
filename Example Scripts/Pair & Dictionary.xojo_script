Class Pair
Dim LeftValue As Variant
Dim RightValue As Variant

Sub Constructor()

End Sub

Sub Constructor( leftValue As Variant, rightValue As Variant )
self.LeftValue = leftValue
self.RightValue = rightValue
End Sub
End Class

Class Dictionary
Private Const kBinCount = &hFFFF

Private Bins() As Variant
Private mIsCaseSensitive As Boolean

Dim DebugMode As Boolean = False

Private Function KeyToStorageKey( key As Variant ) As Variant
if not mIsCaseSensitive then
select case key.Type
case Variant.TypeString, Variant.TypeText
key = key.StringValue.Lowercase
end select
end if

return key
End Function

Private Function StorageIndexOf( storageKeyArr() As Variant, storageKey As Variant ) As Integer
if mIsCaseSensitive and _
( storageKey.Type = Variant.TypeString or storageKey.Type = Variant.TypeText ) then
dim storageKeyString as string = storageKey.StringValue

for i as integer = 0 to storageKeyArr.Ubound
dim thisKey as variant = storageKeyArr( i )
select case thisKey.Type
case Variant.TypeString, Variant.TypeText
if StrComp( thisKey.StringValue, storageKeyString, 0 ) = 0 then
return i
end if

case else
if thisKey = storageKey then
return i
end if
end select
next i

else

for i as integer = 0 to storageKeyArr.Ubound
dim thisKey as variant = storageKeyArr( i )
if thisKey = storageKey then
return i
end if
next i

end if

return -1
End Function

Private Sub GetIndexes( key As Variant, ByRef binIndex As Integer, ByRef subBinIndex As Integer )
dim storageKey as variant = KeyToStorageKey( key ) 

dim keyHash as UInt64 = storageKey.Hash
binIndex = keyHash mod kBinCount
if binIndex > Bins.Ubound or Bins( binIndex ).IsNull then
subBinIndex = -1
else
dim entry as Pair = Bins( binIndex )
dim storageKeyArr() as variant = entry.LeftValue

subBinIndex = StorageIndexOf( storageKeyArr, storageKey )
end if

if DebugMode then
print "key: " + key + _
", sk: " + storageKey + _
", hash: " + str( keyHash ) + _
", binIndex: " + str( binIndex ) + _
", subBinIndex: " + str( subBinIndex )
end if
End Sub

Sub Constructor( caseSensitive As Boolean = False )
mIsCaseSensitive = caseSensitive		
End Sub

Function IsCaseSensitive() As Boolean
return mIsCaseSensitive
End Function

Function HasKey( key As Variant ) As Boolean
dim binIndex as integer
dim subBinIndex as integer
GetIndexes( key, binIndex, subBinIndex )
return subBinIndex <> -1
End Function

Function Value( key As Variant ) As Variant
dim binIndex as integer
dim subBinIndex as integer
GetIndexes( key, binIndex, subBinIndex )

dim entry as Pair = Bins( binIndex )
dim p as Pair = entry.RightValue
dim valueArr() as variant = p.RightValue
return valueArr( subBinIndex )

End Function

Sub Value( key As Variant, Assigns value As Variant )
dim binIndex as integer
dim subBinIndex as integer
GetIndexes( key, binIndex, subBinIndex )

if Bins.Ubound < binIndex then
redim Bins( binIndex )
end if

dim storageKeyArr() as variant
dim keyArr() as variant
dim valueArr() as variant
dim entry as Pair
if Bins( binIndex ).IsNull then
entry = new Pair( storageKeyArr, new Pair( keyArr, valueArr ) )
Bins( binIndex ) = entry
else
entry = Bins( binIndex )
storageKeyArr = entry.LeftValue
dim p as Pair = entry.RightValue
keyArr = p.LeftValue
valueArr = p.RightValue
end if

if subBinIndex = -1 then
storageKeyArr.Append KeyToStorageKey( key )
keyArr.Append key
valueArr.Append value
else
valueArr( subBinIndex ) = value
end if
End Sub

Function Keys() as Variant()
dim r() as variant
for binIndex as integer = 0 to Bins.Ubound
dim entry as Pair = Bins( binIndex )
if entry is nil then
continue for binIndex
end if

dim p as Pair = entry.RightValue
dim keyArr() as variant = p.LeftValue
for keyIndex as integer = 0 to keyArr.Ubound
dim key as variant = keyArr( keyIndex )
r.Append key
next
next
return r
End Function

Function Values() as Variant()
dim r() as variant
for binIndex as integer = 0 to Bins.Ubound
dim entry as Pair = Bins( binIndex )
if entry is nil then
continue for binIndex
end if

dim p as Pair = entry.RightValue
dim valueArr() as variant = p.RightValue
for keyIndex as integer = 0 to valueArr.Ubound
dim value as variant = valueArr( keyIndex )
r.Append value
next
next
return r
End Function

Private Sub PrintVariantArray( arr() as Variant )
dim s() as string
for i as integer = 0 to arr.Ubound
dim v as variant = arr( i )
select case v.Type
case Variant.TypeString, Variant.TypeText
s.Append """" + v.StringValue + """"
case Variant.TypeBoolean, Variant.TypeInteger, Variant.TypeLong, _
Variant.TypeDouble, Variant.TypeSingle, Variant.TypeColor
s.Append v
case Variant.TypeNil
s.Append "nil"
case else
s.Append "<obj>"
end select
next
print join( s, ", " )
End Sub

Sub PrintKeys()
PrintVariantArray( self.Keys )
End Sub

Sub PrintValues()
PrintVariantArray( self.Values )
End Sub
End Class

//
// Tests
//

dim d as Dictionary = new Dictionary( true )

'dim startms as double = Microseconds
'for i as integer = 1 to 1000
'	d.Value( i ) = nil
'next
'dim endms as double = Microseconds
'print format( endms - startms, "#," )
'
'd = new Dictionary( true )
'
'd.Value( 12 ) = 12
'd.Value( "a" ) = "a"
'd.Value( "A" ) = "b"
'
'print d.Value( "a" )
'if d.HasKey( 1 ) then
'	print "what?!?"
'end if
'
'd.Value( 1 ) = nil
'if d.HasKey( 1 ) then
'	print "ok then"
'end if
'
'if d.HasKey( "1" ) then
'	print "well, that makes no sense"
'end if
'
'print "last section"
'd.Value( 13 ) = &cFFFFFF
'd.Value( new Pair ) = "pair"
'
'print "printing keys"
'd.PrintKeys
'd.PrintValues

//
// Test collisions
//

d = new Dictionary( true )
dim key1 as variant = CType( 12, UInt64 )
dim key2 as variant = CType( &hFFFF + 12, UInt64 )

d.DebugMode = true
d.Value( key1 ) = 1
d.Value( key2 ) = 2
d.PrintKeys
d.PrintValues