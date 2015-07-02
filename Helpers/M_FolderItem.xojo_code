#tag Module
Protected Module M_FolderItem
	#tag Method, Flags = &h1
		Protected Sub BinaryContents(f As FolderItem, Assigns contents As String)
		  f.BinaryContents_MTC = contents
		  call f.Owner
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function BinaryContents(f As FolderItem, enc As TextEncoding = nil) As String
		  return f.BinaryContents_MTC( enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BinaryContents_MTC(Extends f As FolderItem, Assigns contents As String)
		  // Sets the contents of a file as binary
		  
		  dim out as BinaryStream = BinaryStream.Create( f, true )
		  
		  if out IsA BinaryStream then
		    out.Write( contents )
		  end if
		  
		  if out.WriteError then
		    dim e as new IOException
		    e.ErrorNumber = out.LastErrorCode
		    raise e
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function BinaryContents_MTC(Extends f As FolderItem, enc As TextEncoding = nil) As String
		  // Returns the contents of a file as binary
		  
		  dim r() as string
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  if bs isA BinaryStream then
		    bs.Position = 0
		    while not bs.EOF
		      r.Append bs.Read( 32000, enc )
		    wend
		    bs = nil
		  end if
		  
		  return join( r, "" )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Clear_MTC(Extends f As FolderItem)
		  dim b as boolean = f.Clear_MTC
		  
		  #pragma unused b
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Clear_MTC(Extends f As FolderItem) As Boolean
		  dim r as boolean = true
		  
		  if f.Exists then
		    r = false // Assume we can't do it for a moment
		    dim bs as BinaryStream = BinaryStream.Open( f, true )
		    if bs IsA BinaryStream and bs.LastErrorCode = 0 then
		      bs.Length = 0
		      if bs.LastErrorCode = 0 then r = true
		    end if
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ContentsMatch(f1 As FolderItem, f2 As FolderItem) As Boolean
		  return f1.ContentsMatch_MTC( f2 ) // Will raise nilObjectException if either is nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContentsMatch_MTC(Extends f1 As FolderItem, f2 As FolderItem) As Boolean
		  if f2 is nil then
		    raise new NilObjectException
		    
		  elseif f1.SameFolderItemAs_MTC( f2 ) then
		    return true
		    
		  elseif not f1.Exists or not f2.Exists then
		    return false
		    
		  elseif f1.Directory or f2.Directory then
		    return false
		    
		  elseif f1.Length <> f2.Length then
		    return false
		    
		  else
		    
		    const kChuckSize = 100000
		    
		    dim b1, b2 as BinaryStream
		    b1 = BinaryStream.Open( f1 )
		    b2 = BinaryStream.Open( f2 )
		    
		    dim chunk1, chunk2 as string
		    while not b1.EOF
		      chunk1 = b1.Read( kChuckSize )
		      chunk2 = b2.Read( kChuckSize )
		      if StrComp( chunk1, chunk2, 0 ) <> 0 then
		        return false
		      end if
		    wend
		    
		    // If we get here...
		    return true
		    
		    // I tried this too, but much slower and not good for large files.
		    
		    'dim h1 as new MD5Digest
		    'dim h2 as new MD5Digest
		    'dim b as BinaryStream
		    'b = BinaryStream.Open( f1 )
		    'h1.Process b.Read( b.Length )
		    'b.Close
		    'b = BinaryStream.Open( f2 )
		    'h2.Process b.Read( b.Length )
		    'b.Close
		    '
		    'return StrComp( h1.Value, h2.Value, 0 ) = 0
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyTo_MTC(Extends source As FolderItem, destination As FolderItem, overwrite As Boolean = False)
		  // Works similarly to FolderItem.CopyFileTo, but allows you to force an overwrite.
		  
		  dim doStraightCopy as boolean = true
		  
		  if overwrite and source.Exists and destination.Directory and destination.Exists and _
		    not SameFolderItem( source.Parent, destination ) then
		    
		    dim srcName as string = source.Name
		    dim fileInDest as FolderItem = destination.Child( srcName )
		    if fileInDest <> nil and fileInDest.Exists then // We have to overwrite the file
		      
		      // Set up a temporary folder to copy the file to
		      dim tempFolderName as string = destination.UniqueNameInFolder_MTC( "TempCopy" )
		      dim tempFolder as FolderItem = destination.GetFolder_MTC( tempFolderName )
		      
		      if tempFolder <> nil and tempFolder.Directory then
		        source.CopyFileTo( tempFolder )
		        if source.LastErrorCode = 0 then
		          dim tempSource as FolderItem = tempFolder.Child( srcName )
		          if tempSource <> nil and tempSource.Exists then
		            tempSource.MoveTo_MTC( destination, overwrite )
		            if tempSource.LastErrorCode = 0 and destination.Child( srcName ).Exists then
		              doStraightCopy = false
		              
		              // Delete the temp folder since there was no error
		              dim err as integer = tempFolder.DeleteRecursive_MTC()
		              #pragma unused err
		            end if // tempSource.LastErrorCode = 0 and ...
		            
		          end if // tempSource <> nil and ...
		        end if // source.LastErrorCode = 0
		      end if // tempFolder <> nil and ...
		      
		    end if // fileInDest <> nil and ...
		    
		  end if // overwrite and source.Exists and ...
		  
		  // Either this is just a straight copy, or there was an error and source needs to reflect it
		  if doStraightCopy then
		    source.CopyFileTo( destination )
		  end if // doStraightCopy
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteContentsOfFolder_MTC(Extends baseFolder As FolderItem) As Integer
		  // Recursively deletes the contents of a folder, but keeps the folder in place.
		  // If there is a problem anywhere along the way, returns an error code.
		  
		  dim errorCode as integer = 0
		  
		  if not baseFolder.Exists or not baseFolder.Directory then
		    return errorCode
		  end if
		  
		  dim queue() as FolderItem = baseFolder.Items_MTC
		  while queue.Ubound <> -1
		    
		    dim thisItem as FolderItem = queue.Pop
		    if thisItem.Directory then
		      dim subItems() as FolderItem = thisItem.Items_MTC
		      if subItems.Ubound <> -1 then
		        queue.Append thisItem
		        thisItem = nil
		        for each f as FolderItem in subItems
		          queue.Append f
		        next
		      end if
		    end if
		    
		    if thisItem <> nil and thisItem.Exists then
		      thisItem.Delete
		      errorCode = thisItem.LastErrorCode
		      if errorCode <> 0 then
		        exit while
		      end if
		    end if
		    
		  wend
		  
		  return errorCode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteRecursive_MTC(Extends f As FolderItem) As Integer
		  // Deletes the contents of a folder, then the folder itself.
		  // If there is an error along the way, returns the code
		  
		  dim errorCode as integer = 0
		  if not f.Exists then return errorCode
		  
		  errorCode = f.DeleteContentsOfFolder_MTC()
		  if errorCode = 0 then
		    f.Delete
		    errorCode = f.LastErrorCode
		  end if
		  
		  return errorCode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EndOfLineOf(f As FolderItem, defaultEOL As String = "", enc As TextEncoding = nil) As String
		  // Figures out the EOL in a file.
		  // If it can't find one, it returns the defaultEOL (nothing by default).
		  
		  // Assumes f is not nil, or throw an exception if it is.
		  
		  if enc is nil then enc = Encodings.UTF8 // Won't allow a nil encoding
		  
		  dim eol as string
		  dim tis as TextInputStream = TextInputStream.Open( f )
		  if tis isA TextInputStream then
		    
		    dim l as string = tis.ReadLine // This will go past the EOL ...
		    dim backup as UInt64 = 3
		    dim curPos as UInt64 = tis.PositionB
		    if backup > curPos then backup = curPos
		    tis.PositionB = curPos - backup // So back it up a bit
		    l = tis.Read( backup )
		    l = l.ConvertEncoding( Encodings.UTF8 )
		    
		    tis = nil // Done with this
		    
		    if l.LenB > 0 then
		      if l.RightB( 2 ) = EndOfLine.Windows then
		        eol =  EndOfLine.Windows
		      else
		        dim char as string = l.RightB( 1 )
		        dim charVal as integer = char.Asc
		        if charVal = 10 then
		          eol = EndOfLine.UNIX
		        elseif charVal = 13 then
		          eol = EndOfLine.Macintosh
		        end if
		      end if
		    end if // l.LenB > 0
		    
		  end if // tis isA TextInputStream
		  
		  if eol.LenB = 0 then
		    eol = defaultEOL
		  else
		    eol = eol.ConvertEncoding( enc )
		  end if
		  
		  return eol
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExpandShellPath_MTC(path As String) As String
		  #if TargetLinux
		    
		    dim sh as new Shell
		    sh.Execute "readlink -f " + path
		    path = sh.Result
		    path = path.ConvertEncoding( Encodings.UTF8 )
		    path = ReplaceLineEndings( path, "" )
		    
		    path = ShellPathFromPOSIXPath_MTC( path ) // Get it back to a shell path
		    
		  #elseif TargetMacOS
		    
		    dim sh as new Shell
		    sh.Execute "echo " + path
		    path = sh.Result
		    path = path.ConvertEncoding( Encodings.UTF8 )
		    path = ReplaceLineEndings( path, "" )
		    
		    path = ShellPathFromPOSIXPath_MTC( path ) // Get it back to a shell path
		    
		  #endif
		  
		  return path
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Extension_MTC(Extends f As FolderItem) As String
		  dim ext as string
		  dim nme as string = f.Name
		  
		  dim parts() as string = nme.Split( "." )
		  dim i as integer = parts.Ubound
		  
		  if i < 1 then
		    // No dot
		  elseif i = 1 and nme.Left( 1 ) = "." then
		    // Not a true extension
		  else
		    ext = parts( i )
		    if ext.InStr( " " ) <> 0  then ext = "" // An extension can't have a space
		  end if
		  
		  return ext
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolderItemFromPOSIXPath_MTC(path As String) As FolderItem
		  path = ShellPathFromPOSIXPath_MTC( path )
		  return GetFolderItemFromShellPath_MTC( path )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolderItemFromShellPath_MTC(path As String) As FolderItem
		  // Attempts to make a FolderItem from a path
		  
		  if path.LenB = 0 then return nil
		  
		  dim f as FolderItem
		  dim wd as FolderItem = SpecialFolder.CurrentWorkingDirectory
		  
		  try
		    f = GetFolderItem( path, FolderItem.PathTypeShell )
		  catch err
		    f = nil
		  end try
		  
		  if f is nil then
		    #if not TargetWin32
		      
		      try
		        f = GetFolderItem( ExpandShellPath_MTC( path ), FolderItem.PathTypeShell )
		      catch
		        f = nil
		      end
		      
		      'if ( f is nil or not f.Exists ) and path.Left( 2 ) = "~/" then
		      'dim home as string = SpecialFolder.UserHome.ShellPath
		      'if home.Right( 1 ) <> "/" then home = home + "/"
		      'dim filePath as string = home + path.Mid( 3 )
		      'try
		      'f = GetFolderItem( filePath, FolderItem.PathTypeShell )
		      'catch err
		      'f = nil
		      'end try
		      'end if
		      
		    #endif
		    
		  end if
		  
		  if f is nil then
		    try
		      f = GetFolderItem( wd.ShellPath + path, FolderItem.PathTypeShell )
		    catch err
		      f = nil
		    end try
		  end if
		  
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFolder_MTC(Extends parentFolder As FolderItem, name As String) As FolderItem
		  // Ensures that the given folder name exists in the given parent folder.
		  // If not, it creates it.
		  // Returns the resulting folder.
		  
		  // Will allow as call like:
		  // f = SpecialFolder.Documents.GetFolder_MTC( "folder1" ).GetFolder_MTC( "folder2" )
		  
		  dim f as FolderItem = parentFolder.Child( name )
		  if not f.Exists then
		    f.CreateAsFolder
		  end if
		  
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetRelativeFolderItem_MTC(nativePath As String, relativeTo As FolderItem = Nil) As FolderItem
		  // Stolen from Jeremy Cowgar, which is why the paren spacing is wrong
		  
		  dim prefix as String = ""
		  
		  #if targetwin32 then
		    const pathSep = "\"
		    
		    //
		    // Maybe what is passed isn't actually a relative nativePath
		    //
		    
		    if nativePath.Mid( 2, 1 ) = ":" then
		      return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		    end if
		    
		    if nativePath.Left( 1 ) = pathSep then
		      relativeTo = GetFolderItem( SpecialFolder.CurrentWorkingDirectory.NativePath.Left( 3 ) )
		    end if
		    
		  #else
		    const pathSep = "/"
		    
		    //
		    // Maybe what is passed isn't actually a relative nativePath
		    //
		    
		    if nativePath.Left( 1 ) = pathSep then
		      return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		    end if
		    
		    //
		    // See if it's a home path
		    //
		    if nativePath.Left( 2 ) = ( "~" + pathSep ) or nativePath = "~" then
		      dim homePath as string = SpecialFolder.UserHome.NativePath
		      if homePath.Right( 1 ) = pathSep then
		        homePath = homePath.Left( nativePath.Len - pathSep.Len )
		      end if
		      nativePath = homePath + nativePath.Mid( 2 )
		      return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		    end if
		    
		    //
		    // See if it's another user's home folder
		    //
		    if nativePath.Left( 1 ) = "~" then
		      dim homePath as string = nativePath.NthField( pathSep, 1 )
		      dim homePathShell as string = ShellPathFromPOSIXPath_MTC( homePath )
		      
		      dim sh as new Shell
		      sh.Execute "cd " + homePathShell + " && pwd"
		      dim thisPath as string = sh.Result.DefineEncoding( Encodings.UTF8 ).Trim
		      if thisPath.Right( 1 ) = pathSep then
		        thisPath = thisPath.Left( thisPath.Len - pathSep.Len )
		      end if
		      
		      dim pos as integer = homePath.Len + 1
		      nativePath = thisPath + nativePath.Mid( pos )
		      
		      return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		      
		    end if
		    
		    prefix = pathSep
		  #endif
		  
		  //
		  // OK, seems to be a relative nativePath
		  //
		  
		  if relativeTo = nil then
		    relativeTo = SpecialFolder.CurrentWorkingDirectory
		  end if
		  
		  nativePath = relativeTo.NativePath + pathSep + nativePath
		  
		  #pragma warning "Will this work on Windows too?"
		  
		  #if not TargetWin32
		    return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		  #endif
		  
		  dim newParts() as String
		  
		  dim pathParts() as String = nativePath.Split( pathSep )
		  for i as Integer = 0 to pathParts.Ubound
		    dim p as String = pathParts( i )
		    if p = "" then
		      // Can happen on Windows since it appends a pathSep onto the end of NativePath
		      // if relativeTo is a folder.
		      
		    elseif p = "." then
		      // Skip this nativePath component
		      
		    elseif p = ".." then
		      // Remove the last nativePath component from newParts
		      if newParts.Ubound > -1 then
		        newParts.Remove newParts.Ubound
		      end if
		      
		    else
		      // Nothing special about this nativePath component
		      newParts.Append p
		    end if
		  next
		  
		  nativePath = prefix + Join( newParts, pathSep )
		  
		  return GetFolderItem( nativePath, FolderItem.PathTypeNative )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Head(f As FolderItem, numOfParagraphs As Integer, eol As String = "", enc As TextEncoding = nil) As String
		  return f.Head_MTC( numOfParagraphs, eol, enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Head_MTC(Extends f As FolderItem, numOfParagraphs As Integer, eol As String = "", enc As TextEncoding = nil) As String
		  // Returns paragraphs off of the top of a file.
		  
		  static utf8 as TextEncoding = Encodings.UTF8
		  if enc is nil then enc = utf8
		  
		  if eol.LenB = 0 then
		    eol = EndOfLineOf( f, "", enc )
		    if eol.LenB = 0 then return f.TextContents_MTC( enc ) // No EOL so return the whole contents of the file
		  end if
		  eol = eol.ConvertEncoding( utf8 )
		  eol = eol.DefineEncoding( nil )
		  
		  dim r as string
		  
		  // Not using TextInputStream.ReadLine because we want to grab the last EOL, if any.
		  
		  dim filled as boolean
		  dim blockSize as integer = numOfParagraphs * kBytesPerParagraph
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  if bs isA BinaryStream then
		    bs.Position = 0
		    while not bs.EOF
		      dim block as string = bs.Read( blockSize )
		      r = r + block
		      if r.CountFieldsB( eol ) > numOfParagraphs then
		        filled = true
		        exit
		      end if
		    wend
		    
		    bs = nil
		  end if
		  
		  if filled then
		    #if kMStringAvailable
		      r = r.Head_MTC( numOfParagraphs, eol )
		    #else
		      dim pars() as string = r.SplitB( eol )
		      dim lastParIndex as integer = numOfParagraphs - 1
		      if pars.Ubound > lastParIndex then
		        redim pars( lastParIndex )
		        pars.Append "" // Add back the EOL
		      end if
		      r = join( pars, eol )
		    #endif
		  end if
		  
		  return r.DefineEncoding( enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsEmptyFile(f As FolderItem) As Boolean
		  return f.IsEmptyFile_MTC()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmptyFile_MTC(Extends f As FolderItem) As Boolean
		  // Files that don't exist are considered empty
		  
		  dim r as boolean = true // Assume it is empty
		  if f.Exists then
		    if f.Directory then
		      r = false // Folders are not empty files
		    else
		      r = ( f.Length = 0 )
		    end if
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Items_MTC(Extends f As FolderItem, includeInvisibles As Boolean = True) As FolderItem()
		  dim r() as FolderItem
		  if f <> nil and f.Exists and f.Directory then
		    
		    dim thisItem as FolderItem
		    dim cnt as integer = f.Count
		    
		    // Do this as two separate loops to save some cycles
		    if includeInvisibles then
		      
		      redim r( cnt - 1 )
		      for i as integer = 1 to cnt
		        thisItem = f.TrueItem( i )
		        r( i - 1 ) = thisItem
		      next i
		      
		    else // Have to check for visibility
		      
		      for i as integer = 1 to cnt
		        thisItem = f.TrueItem( i )
		        if thisItem.Visible then
		          r.Append thisItem
		        end if // isVisible
		      next i
		      
		    end if // includeInvisibles
		    
		  end if // f <> nil and f.Exists and f.Directory
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = TargetHasGUI
		Protected Function MacBundleContentsFolder() As FolderItem
		  #if TargetDesktop
		    
		    return App.MacBundleContentsFolder_MTC
		    
		  #endif
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function MacBundleContentsFolder_MTC(Extends theApp As Application) As FolderItem
		  #if TargetMacOS and TargetDesktop
		    
		    dim f as FolderItem = theApp.ExecutableFile.Parent.Parent
		    return f
		    
		  #else
		    
		    #pragma unused theApp
		    return nil
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1, CompatibilityFlags = TargetHasGUI
		Protected Function MacBundleFolder() As FolderItem
		  return App.MacBundleFolder_MTC
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function MacBundleFolder_MTC(Extends theApp As Application) As FolderItem
		  #if TargetMacOS
		    
		    dim f as FolderItem = theApp.MacBundleContentsFolder_MTC.Parent
		    return f
		    
		  #else
		    
		    #pragma unused theApp
		    return nil
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MoveToTrash_MTC(Extends f As FolderItem) As Boolean
		  dim r as boolean = true
		  if f is nil or not f.Exists then return r // Sure, it doesn't exist, so it's trashed
		  
		  #if TargetMacOS
		    dim source as MemoryBlock = f.MacFSRef
		    dim dest as new MemoryBlock( 80 )
		    
		    Declare Function FSMoveObjectToTrashSync lib kCarbonLib ( fsRef as Ptr, target as Ptr, options as UInt32 ) As Integer
		    
		    dim OSError as Integer = FSMoveObjectToTrashSync( source, dest, 0 )
		    
		    if OSError <> 0 then
		      dim err as new RuntimeException
		      err.ErrorNumber = OSError
		      err.Message = "A MacOS error occurred while moving this item to the trash."
		      raise err
		    end if
		  #endif
		  
		  if f.Exists then
		    f.Delete()
		  end if
		  if f.Exists then
		    f.Delete()
		  end if
		  if f.Exists then
		    f.MoveFileTo( SpecialFolder.Trash )
		  end if
		  if f.Exists then
		    f.MoveFileTo( SpecialFolder.Trash( f.Volume_MTC ) )
		  end if
		  
		  if f.Exists then
		    r = false
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveTo_MTC(Extends source As FolderItem, destination As FolderItem, overwrite As Boolean = False)
		  // Works similarly to FolderItem.MoveFileTo, but allows you to force an overwrite.
		  
		  dim doStraightMove as boolean = true
		  
		  if overwrite and source.Exists and destination.Directory and destination.Exists and _
		    not SameFolderItem( source.Parent, destination ) then
		    
		    dim srcName as string = source.Name
		    dim fileInDest as FolderItem = destination.Child( srcName )
		    if fileInDest <> nil and fileInDest.Exists then
		      
		      // Rename the existing file
		      dim newName as string = destination.UniqueNameInFolder_MTC( srcName, "(old)" )
		      fileInDest.Name = newName
		      fileInDest = destination.Child( newName )
		      if fileInDest <> nil and fileInDest.Exists then
		        source.MoveFileTo( destination )
		        if source.LastErrorCode = 0 and destination.Child( srcName ).Exists then
		          doStraightMove = false
		          
		          // Delete the original
		          dim err as integer = fileInDest.DeleteRecursive_MTC
		          #pragma unused err
		          
		        end if // source.LastErrorCode = 0
		        
		      end if // fileInDest <> nil and ...
		    end if
		    
		  end if // not source.Exists or ...
		  
		  // Either there was an error or needed a straight move anyway
		  if doStraightMove then
		    source.MoveFileTo( destination )
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NameWithoutExtension_MTC(Extends f As FolderItem) As String
		  // Returns the portion of the name without the extension
		  
		  dim r as string = f.Name
		  dim ext as string = f.Extension_MTC
		  dim extLen as integer = ext.Len
		  if extLen <> 0 then
		    extLen = extLen + 1 // Include the dot
		    r = r.Left( r.Len - extLen )
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function NewTemporarySubFolder(baseName As String = "") As FolderItem
		  // Creates a new temporary subfolder using the given baseName, or the app name if not given.
		  
		  dim proposed as string = baseName.Trim
		  static myRandom as new Random
		  
		  if proposed = "" then proposed = App.ExecutableFile.NameWithoutExtension_MTC
		  proposed = proposed + "-" + format( microseconds, "#" ) + "-" + str( myRandom.InRange( 1, 999999 ) )
		  
		  proposed = SpecialFolder.Temporary.UniqueNameInFolder_MTC( proposed )
		  dim f as FolderItem = SpecialFolder.Temporary.Child( proposed )
		  if f <> nil and not f.Exists then
		    f.CreateAsFolder
		  end if
		  
		  if f is nil or not f.Exists or not f.Directory then
		    f = nil
		  end if
		  
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function pCurrentSystemVersion() As String
		  static r as string
		  
		  #if TargetMacOS
		    
		    if r = "" then
		      dim sh as new shell
		      sh.Execute "/usr/bin/sw_vers | grep 'ProductVersion'"
		      if sh.ErrorCode = 0 then
		        r = sh.Result.Trim
		        
		        dim rx as new RegEx
		        rx.SearchPattern = "\d.+$"
		        
		        dim match as RegExMatch = rx.Search( r )
		        if match <> nil then
		          r = match.SubExpressionString( 0 ).Trim
		          r = r.DefineEncoding( Encodings.UTF8 )
		        end if
		      end if
		    end if
		    
		  #endif
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function pFormatVersion(major As Integer, minor As Integer, bug As Integer) As String
		  const kFormatter = "0000"
		  
		  dim r as string = format( major, kFormatter ) + format( minor, kFormatter ) + format( bug, kFormatter )
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function POSIXPathFromShellPath_MTC(path As String) As String
		  dim f as FolderItem = GetFolderItemFromShellPath_MTC( path )
		  return f.POSIXPath_MTC
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function POSIXPath_MTC(Extends f As FolderItem) As String
		  #if TargetMacOS or TargetLinux
		    
		    static slashChar as integer = Asc( "\" )
		    
		    dim path as string = f.ShellPath
		    dim chars() as string = path.Split( "" )
		    dim newChars() as string
		    dim i as integer = 0
		    do until i > chars.Ubound
		      dim thisChar as string = chars( i )
		      dim nextChar as string
		      if i < chars.Ubound then nextChar = chars( i + 1 )
		      if thisChar.Asc = slashChar then
		        newChars.Append nextChar
		        i = i + 2 // Skip next char
		      else
		        newChars.Append thisChar
		        i = i + 1
		      end if
		    loop
		    
		    dim r as string = join( newChars, "" )
		    return r
		    
		  #else
		    
		    return f.ShellPath
		    
		  #endif
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function pResolveAlias108(f As FolderItem) As FolderItem
		  dim r as FolderItem
		  
		  #if TargetMacOS
		    
		    dim releaseStack() as Ptr
		    
		    Soft Declare Function CFURLCreateWithString Lib kCarbonLib ( _
		    allocator As Ptr, _
		    URLString As CFStringRef, _
		    baseURL As Ptr _
		    ) As Ptr
		    Soft Declare Function CFURLCreateBookmarkDataFromFile Lib kCarbonLib ( _
		    allocator As Ptr, _
		    fileURL As Ptr, _
		    ByRef errorRef As Ptr _
		    ) As Ptr
		    Soft Declare Function CFURLCreateByResolvingBookmarkData Lib kCarbonLib ( _
		    allocator As Ptr, _
		    bookmark As Ptr, _
		    options As UInt32, _
		    relativeToURL As Ptr, _
		    resourcePropertiesToInclude As Ptr, _
		    ByRef isStale As Boolean, _
		    ByRef errorRef As Ptr _
		    ) As Ptr
		    Soft Declare Function CFURLGetString Lib kCarbonLib ( url As Ptr ) As CFStringRef
		    'Soft Declare Function CFErrorGetCode Lib kCarbonLib ( err As Ptr ) As Int32
		    Declare Sub CFRelease Lib kCarbonLib ( cf As Ptr )
		    
		    dim isStale as Boolean
		    dim url, bookmarkData, newURL as Ptr
		    dim errorRef as Ptr
		    try
		      url = CFURLCreateWithString( nil, f.URLPath, nil )
		      releaseStack.Append url
		    catch
		      url = nil
		    end
		    if url <> nil then
		      try
		        bookmarkData = CFURLCreateBookmarkDataFromFile( nil, url, errorRef )
		        releaseStack.Append bookmarkData
		        releaseStack.Append errorRef
		      catch
		        bookmarkData = nil
		      end
		    end if
		    
		    if bookmarkData <> nil then
		      try
		        newURL = CFURLCreateByResolvingBookmarkData( _
		        nil, bookmarkData, 0, nil, nil, isStale, errorRef _
		        )
		        releaseStack.Append newURL
		        releaseStack.Append errorRef
		      catch
		        newURL = nil
		      end
		    end if
		    
		    if newURL <> nil then
		      dim urlString as string = CFURLGetString( newURL )
		      if urlString.LenB <> 0 then
		        r = new FolderItem( urlString, FolderItem.PathTypeURL )
		      end if
		    end if
		    
		    Exception err As RuntimeException // Really shouldn't happen
		      r = nil
		      
		    Finally
		      
		      for each thisPtr as Ptr in releaseStack
		        if thisPtr <> nil then
		          CFRelease( thisPtr )
		        end if
		      next
		      
		  #else
		    #pragma unused f
		  #endif
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResolveAlias_MTC(Extends f As FolderItem) As FolderItem
		  if f <> nil and f.Alias then
		    
		    #if not TargetMacOS // Shouldn't ever happen
		      
		      f = f.Parent.Child( f.Name )
		      
		    #else
		      
		      dim vers as string = pCurrentSystemVersion
		      if vers < pFormatVersion( 10, 8, 0 ) or not System.IsFunctionAvailable( "CFURLCreateBookmarkDataFromFile", kCarbonLib ) then
		        
		        Declare Function FSResolveAliasFileWithMountFlags Lib kCarbonLib ( _
		        ref As Ptr, _
		        resolveAliasChains As Boolean, _
		        ByRef targetIsFolder As Boolean, _
		        ByRef wasAliased As Boolean, _
		        mountFlag As UInt32 _
		        ) As Integer
		        
		        dim ref As MemoryBlock = f.MacFSRef
		        dim resolveAliasChains As Boolean = true
		        dim targetIsFolder, wasAliased As Boolean
		        dim mountFlag as UInt32 = 1
		        dim err as integer
		        
		        err = FSResolveAliasFileWithMountFlags( ref, resolveAliasChains, targetIsFolder, wasAliased, mountFlag )
		        
		        if err <> 0 then
		          f = nil
		        else
		          f = f.CreateFromMacFSRef( ref )
		        end if
		        
		      else // It's 10.8 or later
		        
		        f = pResolveAlias108( f )
		        
		      end if // It's 10.8 or greater
		      
		    #endif
		    
		  end if
		  
		  return f
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SameFolderItem(f1 As FolderItem, f2 As FolderItem) As Boolean
		  dim r as boolean
		  
		  select case true
		    
		  case ( f1 is f2 )
		    r = true
		    
		  case ( f1 is nil or f2 is nil )
		    r = false
		    
		  case ( f1.Exists xor f2.Exists )
		    r = false
		    
		  case ( f1.Directory xor f2.Directory )
		    r = false
		    
		  else
		    dim a1, a2 as string
		    
		    a1 = f1.GetSaveInfo( nil )
		    a2 = f2.GetSaveInfo( nil )
		    
		    if StrComp( a1, a2, 0 ) = 0 then r = true
		    
		  end select
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SameFolderItemAs_MTC(Extends f1 As FolderItem, f2 As FolderItem) As Boolean
		  return SameFolderItem( f1, f2 )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Scan(start As UInt64 = 0, f As FolderItem, findBytes As String, ByRef pos As UInt64) As Boolean
		  return f.Scan_MTC( start, findBytes, pos )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scan_MTC(Extends f As FolderItem, start As UInt64 = 0, findBytes As String, ByRef pos As UInt64) As Boolean
		  // Scans a files for the findBytes.
		  // Returns true if it was found, false if not or if there is an error.
		  
		  const kTargetReadLen = 262144 // 256 K -- can get up to twice this
		  
		  dim findLen as integer = findBytes.LenB
		  if findLen = 0 or findLen > f.Length then return false
		  dim findLenGreaterThan1 as boolean = ( findLen > 1 )
		  
		  dim r as boolean
		  
		  dim enc as TextEncoding = findBytes.Encoding
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  if bs isA BinaryStream then
		    dim readLen as integer = kTargetReadLen
		    
		    bs.Position = start
		    dim block as string
		    while not bs.EOF
		      dim offset as integer = bs.Position
		      if block <> ""  and findLenGreaterThan1 then
		        block = block.RightB( findLen - 1 )
		        offset = offset - block.LenB
		        block = block + bs.Read( readLen, enc )
		      else
		        block = bs.Read( readLen, enc )
		      end if
		      dim findPos as UInt64 = block.InStrB( findBytes )
		      if findPos > 0 then
		        pos = findPos + offset - 1
		        r = true
		        exit
		      end if
		    wend
		    
		    bs = nil
		  end if
		  
		  return r
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ShellPathFromPOSIXPath_MTC(path As String) As String
		  path = path.ReplaceAll( "\" , "\\" )
		  path = path.ReplaceAll( " ", "\ " )
		  path = path.ReplaceAll( ";", "\;" )
		  path = path.ReplaceAll( """", "\""" )
		  path = path.ReplaceAll( "'", "\'" )
		  
		  return path
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function Tail(f As FolderItem, numOfParagraphs As Integer, eol As String = "", enc As TextEncoding = nil) As String
		  return f.Tail_MTC( numOfParagraphs, eol, enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Tail_MTC(Extends f As FolderItem, numOfParagraphs As Integer, eol As String = "", enc As TextEncoding = nil) As String
		  // Returns the last n paragraphs of a file.
		  // Has to read backwards to prevent loading the whole file.
		  
		  static utf8 as TextEncoding = Encodings.UTF8
		  if enc is nil then enc = utf8 // We won't return a nil encoding
		  
		  if eol.LenB = 0 then
		    eol = EndOfLineOf( f, "", enc )
		    if eol.LenB = 0 then return f.TextContents_MTC( enc ) // No EOL so return the whole contents of the file
		  end if
		  eol = eol.ConvertEncoding( utf8 )
		  eol = eol.RightB( 1 ) // We are only interested in the last EOL character
		  eol = eol.DefineEncoding( nil )
		  
		  dim trueNumOfParagraphs as integer = numOfParagraphs
		  
		  dim r as string
		  dim filled as boolean
		  dim bs as BinaryStream = BinaryStream.Open( f )
		  if bs isA BinaryStream then
		    dim blockSize as UInt64 = kBytesPerParagraph * numOfParagraphs
		    dim readPos as UInt64 = bs.Length
		    
		    if readPos <> 0 then
		      
		      // Check for a trailing EOL
		      bs.Position = readPos - 1
		      dim lastByte as string = bs.Read( 1 )
		      if lastByte = eol then numOfParagraphs = numOfParagraphs + 1
		      
		      while readPos <> 0
		        if readPos < blockSize then
		          blockSize = readPos
		          readPos = 0
		        else
		          readPos = readPos - blockSize
		        end if
		        
		        if blockSize < 1 then exit // Should never happen
		        
		        bs.Position = readPos
		        dim block as string = bs.Read( blockSize )
		        r = block + r
		        if CountFieldsB( r, eol ) > numOfParagraphs then
		          filled = true
		          exit // We have enough
		        end if
		      wend
		      
		    end if // readPos <> 0
		    
		    bs = nil
		  end if
		  
		  if filled then // We have more than enough
		    
		    #if kMStringAvailable // If M_String is available
		      r = r.Tail_MTC( trueNumOfParagraphs, eol )
		    #else
		      #pragma unused trueNumOfParagraphs
		      
		      dim pars() as string = r.SplitB( eol )
		      dim lastPar as integer = pars.Ubound
		      dim firstPar as integer = lastPar - numOfParagraphs + 1
		      dim newPars() as string
		      redim newPars( numOfParagraphs - 1 )
		      dim newParIndex as integer = -1
		      for i as integer = firstPar to lastPar
		        newParIndex = newParIndex + 1
		        newPars( newParIndex ) = pars( i )
		      next i
		      r = join( newPars, eol )
		    #endif
		    
		  end if
		  
		  return r.DefineEncoding( enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Function TemporaryAppFolder_MTC(Extends myApp As Application) As FolderItem
		  // Creates a temporary folder for the application
		  
		  #pragma unused myApp
		  
		  dim temp as FolderItem
		  dim name as string = App.ExecutableFile.NameWithoutExtension_MTC.Trim
		  if name = "" then
		    
		    return nil
		    
		  else
		    
		    temp = SpecialFolder.Temporary.GetFolder_MTC( name )
		    
		    if temp is nil or not temp.Directory or not temp.Exists then
		      temp = nil
		    end if
		    
		  end if // name = ""
		  
		  return temp
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub TextContents(f As FolderItem, Assigns contents As String)
		  f.TextContents_MTC = contents
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TextContents(f As FolderItem, enc As TextEncoding = nil) As String
		  return f.TextContents_MTC( enc )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub TextContents_MTC(Extends f As FolderItem, Assigns contents As String)
		  // Sets the contents of the file as text
		  
		  dim out as TextOutputStream = TextOutputStream.Create( f )
		  
		  if out isA TextOutputStream then
		    out.Write contents
		  end if
		  
		  if out.WriteError then
		    dim e as new IOException
		    e.ErrorNumber = out.LastErrorCode
		    raise e
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextContents_MTC(Extends f As FolderItem, enc As TextEncoding = nil) As String
		  // Returns the contents of the file as text
		  
		  dim r as string
		  dim t as TextInputStream = TextInputStream.Open( f )
		  if t isA TextInputStream then
		    r = t.ReadAll( enc )
		    t = nil
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TrueItems_MTC(Extends f As FolderItem) As FolderItem()
		  dim r() as FolderItem
		  if f <> nil and f.Exists and f.Directory then
		    
		    dim cnt as integer = f.Count
		    redim r( cnt - 1 )
		    for i as integer = 1 to cnt
		      r( i - 1 ) = f.TrueItem( i )
		    next
		    
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function UniqueNameInFolder_MTC(Extends source As FolderItem, itemName As String, suffix As string = "copy") As String
		  // Returns a unique name within the given folder
		  // Appends the suffix if needed, then the suffix + " " + index
		  
		  suffix = suffix.Trim
		  if suffix = "" then
		    suffix = " copy"
		  else
		    suffix = " " + suffix
		  end if
		  
		  dim uniqueName as string = itemName
		  dim child as FolderItem = source.Child( uniqueName )
		  if child.Exists then
		    dim ext as string = child.Extension_MTC
		    if ext <> "" then ext = "." + ext
		    
		    itemName = child.NameWithoutExtension_MTC
		    uniqueName = itemName + suffix + ext
		    
		    dim index as integer = 0
		    
		    while source.Child( uniqueName ).Exists
		      index = index + 1
		      uniqueName = itemName + suffix + " " + str( index ) + ext
		    wend
		    
		  end if
		  
		  return uniqueName
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Volume_MTC(Extends f As FolderItem) As FolderItem
		  // Returns the Volume of the FolderItem
		  
		  if f is nil then return nil
		  
		  dim r as FolderItem = f
		  dim p as FolderItem = r.Parent
		  while p <> nil
		    r = p
		    p = r.Parent
		  wend
		  
		  return r
		  
		End Function
	#tag EndMethod


	#tag Constant, Name = kBytesPerParagraph, Type = Double, Dynamic = False, Default = \"512", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCarbonLib, Type = String, Dynamic = False, Default = \"Carbon", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kMStringAvailable, Type = Boolean, Dynamic = False, Default = \"False", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUseMBSPlugins, Type = Boolean, Dynamic = False, Default = \"False", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
