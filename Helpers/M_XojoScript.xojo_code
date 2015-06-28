#tag Module
Protected Module M_XojoScript
	#tag Method, Flags = &h1
		Protected Function ErrorToString(error As XojoScript.Errors, errorInfo As Dictionary) As String
		  dim r as string = "Unknown error."
		  
		  select case integer( error )
		  case 1
		    r = "Syntax does not make sense."
		    
		  case 2
		    r = "Type mismatch."
		    
		  case 3
		    r = "Select Case does not support that type of expression."
		    
		  case 4
		    r = "Obsolete. The compiler no longer generates this error."
		    
		  case 5
		    r = "The parser's internal stack has overflowed."
		    
		  case 6
		    r = "Too many parameters for this function."
		    
		  case 7
		    r = "Not enough parameters for this function call."
		    
		  case 8
		    r = "Wrong number of parameters for this function call."
		    
		  case 9
		    r = "Parameters are incompatible with this function."
		    
		  case 10
		    r = "Assignment of an incompatible data type."
		    
		  case 11
		    r = "Undefined identifier."
		    
		  case 12
		    r = "Undefined operator."
		    
		  case 13
		    r = "Logic operations require Boolean operands."
		    
		  case 14
		    r = "Array bounds must be integers."
		    
		  case 15
		    r = "Can't call a non-function."
		    
		  case 16
		    r = "Can't get an element from something that isn't an array."
		    
		  case 17
		    r = "Not enough subscripts for this array's dimensions."
		    
		  case 18
		    r = "Too many subscripts for this array's dimensions."
		    
		  case 19
		    r = "Can't assign an entire array."
		    
		  case 20
		    r = "Can't use an entire array in an expression."
		    
		  case 21
		    r = "Can't pass an expression as a ByRef parameter.    "
		    
		  case 22
		    r = "Duplicate identifier."
		    
		  case 23
		    r = "The backend code generator failed."
		    
		  case 24
		    r = "Ambiguous call to overloaded method."
		    
		  case 25
		    r = "Multiple inheritance is not allowed."
		    
		  case 26
		    r = "Cannot create an instance of an interface."
		    
		  case 27
		    r = "Cannot implement a class as though it were an interface."
		    
		  case 28
		    r = "Cannot inherit from something that is not a class."
		    
		  case 29
		    r = "This class does not fully implement the specified interface."
		    
		  case 30
		    r = "Event handlers cannot live outside of a class."
		    
		  case 31
		    r = "It is not legal to ignore the result of a function call."
		    
		  case 32
		    r = "Can't use ""Self"" keyword outside of a class."
		    
		  case 33
		    r = "Can't use ""Me"" keyword outside of a class."
		    
		  case 34
		    r = "Can't return a value from a Sub."
		    
		  case 35
		    r = "An exception object required here."
		    
		  case 36
		    r = "The function declares a different return type than the interface function it is implementing."
		    
		  case 37
		    r = "The function declares a different return type than the function in its superclass that it's overriding."
		    
		  case 38
		    r = "The method uses the ""Handles"" clause to specify that it is an event handler, but the method cannot handle events. For example, the method may not be in a class or may be a shared method."
		    
		  case 39
		    r = "The method uses the ""Handles"" clause but specifies an event that does not exist."
		    
		  case 40
		    r = "Destructors can't have parameters."
		    
		  case 41
		    r = "Can't use ""Super"" keyword outside of a class."
		    
		  case 42
		    r = "Can't use ""Super"" keyword in a class that has no parent."
		    
		  case 43
		    r = "This #else does not have a matching #if preceding it."
		    
		  case 44
		    r = "This #endif does not have a matching #if preceding it."
		    
		  case 45
		    r = "Only Boolean constants can be used with #if."
		    
		  case 46
		    r = "Only Boolean constants can be used with #if."
		    
		  case 47
		    r = "The variable specified after the Next statement does not match the loop's counter variable. " + _
		    "For example, if you declare the For loop as using ""i"" as its counter, the loop must end in ""Next"" or ""Next i""."
		    
		  case 48
		    r = "The size of an array must be a constant or number."
		    
		  case 49
		    r = "You can't pass an array to an external function."
		    
		  case 50
		    r = "External functions cannot use objects as parameters."
		    
		  case 51
		    r = "External functions cannot use ordinary strings as parameters. Use CString, PString, WString, or CFStringRef instead."
		    
		  case 52
		    r = "This kind of array can not be sorted."
		    
		  case 53
		    r = "This property is protected. It can only be used from within its class."
		    
		  case 54
		    r = "This method is protected. It can only be called from within its class."
		    
		  case 55
		    r = "This local variable or constant has the same name as a Declare in this method. You must resolve this conflict."
		    
		  case 56
		    r = "This global variable has the same name as a global function. You must resolve this conflict."
		    
		  case 57
		    r = "This property has the same name as a method. You must resolve this conflict."
		    
		  case 58
		    r = "This property has the same name as an event. You must resolve this conflict."
		    
		  case 59
		    r = "This global variable has the same name as a class. You must resolve this conflict."
		    
		  case 60
		    r = "This global variable has the same name as a module. You must change one of them."
		    
		  case 61
		    r = "This local variable or parameter has the same name as a constant. You must resolve this conflict."
		    
		  case 62
		    r = "This identifier is reserved and can't be used as a variable or property name."
		    
		  case 63
		    r = "There is no class with this name."
		    
		  case 64
		    r = "The library name must be a string constant."
		    
		  case 65
		    r = "This Declare Function statement is missing its return type."
		    
		  case 66
		    r = "You can't use the New operator with this class."
		    
		  case 67
		    r = "This method doesn't return a value."
		    
		  case 68
		    r = "End quote missing."
		    
		  case 69
		    r = "A class cannot be its own superclass."
		    
		  case 70
		    r = "Cannot assign a value to this property."
		    
		  case 71
		    r = "Cannot get this property's value."
		    
		  case 72
		    r = "The If statement is missing its condition."
		    
		  case 73
		    r = "The current function must return a value, but this Return statement does not specify any value."
		    
		  case 74
		    r = "A method parameter has options that are mutually exclusive. " + _
		    "For example, the ""ByRef"" and ""ByVal"" options cannot be used together."
		    
		  case 75
		    r = "This parameter option has already been specified. For example, this occurs if you declare a parameter as ""ByRef ByRef i As Integer""."
		    
		  case 76
		    r = "A parameter passed by reference cannot have a default value."
		    
		  case 77
		    r = "A ParamArray cannot have a default value."
		    
		  case 78
		    r = "An Assigns parameter cannot have a default value."
		    
		  case 79
		    r = "An Extends parameter cannot have a default value."
		    
		  case 80
		    r = "Only the first parameter may use the Extends option."
		    
		  case 81
		    r = "Only the last parameter may use the Assigns option."
		    
		  case 82
		    r = "An ordinary parameter cannot follow a ParamArray."
		    
		  case 83
		    r = "Only one parameter may use the Assigns option."
		    
		  case 84
		    r = "Only one parameter may use the ParamArray option."
		    
		  case 85
		    r = "A ParamArray cannot have more than one dimension."
		    
		  case 86
		    r = "The keyword ""Then"" is expected after this If statement's condition."
		    
		  case 87
		    r = "Obsolete. The compiler no longer generates this error."
		    
		  case 88
		    r = "Constants must be defined with constant values."
		    
		  case 89
		    r = "Illegal use of the Call keyword."
		    
		  case 90
		    r = "No cases may follow the Else block."
		    
		  case 91
		    r = "A computed property can only contain ""Get"" and ""Set"" blocks"
		    
		  case 92
		    r = "A computed property getter or setter block ends with the wrong ""end"" line. " + _
		    "For example, if you start the block with ""Get"", it must end with ""End Get""."
		    
		  case 93
		    r = "Duplicate method definition."
		    
		  case 94
		    r = "The library name for this declaration is blank."
		    
		  case 95
		    r = "This If statement is missing an End If statement."
		    
		  case 96
		    r = "This Select Case statement is missing an End Select statement."
		    
		  case 97
		    r = "This For loop is missing its Next statement."
		    
		  case 98
		    r = "This While loop is missing its Wend statement."
		    
		  case 99
		    r = "This Try statement is missing an End Try statement."
		    
		  case 100
		    r = "This Do loop is missing its Loop statement."
		    
		  case 101
		    r = "Too few parentheses."
		    
		  case 102
		    r = "Too many parentheses."
		    
		  case 103
		    r = "The Continue statement only works inside a loop."
		    
		  case 104
		    r = "There is no (%1) block to (%2) here."
		    
		  case 105
		    r = "Shared methods cannot access instance properties."
		    
		  case 106
		    r = "Shared methods cannot access instance methods."
		    
		  case 107
		    r = "Shared computed property accessors cannot access instance properties."
		    
		  case 108
		    r = "Shared computed property accessors cannot access instance methods."
		    
		  case 109
		    r = "The Constructor of this class is protected, and can only be called from within this class."
		    
		  case 110
		    r = "This String field needs to specify its length."
		    
		  case 111
		    r = "Structures cannot contain fields of this type."
		    
		  case 112
		    r = "Structures cannot contain multidimensional arrays."
		    
		  case 113
		    r = "Enumerated types can only contain integers."
		    
		  case 114
		    r = "An enumerations cannot be defined in terms of another enumeration."
		    
		  case 115
		    r = "This is a constant; its value can't be changed."
		    
		  case 116
		    r = "A String field must be at least 1 byte long."
		    
		  case 117
		    r = "The storage size specifier only applies to String fields."
		    
		  case 118
		    r = "A Structure cannot contain itself."
		    
		  case 119
		    r = "A structure is not a class, and cannot be instantiated with New."
		    
		  case 120
		    r = "An enumeration is not a class, and cannot be instantiated with New."
		    
		  case 121
		    r = "This type is private, and can only be used within its module."
		    
		  case 122
		    r = "Class members cannot be global."
		    
		  case 123
		    r = "Module members must be public or private; they cannot be protected."
		    
		  case 124
		    r = "Members of inner modules cannot be global."
		    
		  case 125
		    r = "A Dim statement creates only one new object at a time."
		    
		  case 126
		    r = "A constant was expected here, but this is some other kind of expression."
		    
		  case 127
		    r = "This module is private, and can only be used within its containing module."
		    
		  case 128
		    r = "Duplicate property definition."
		    
		  case 129
		    r = "This datatype cannot be used as an array element."
		    
		  case 130
		    r = "Delegate parameters cannot be optional."
		    
		  case 131
		    r = "Delegates cannot use Extends, Assigns, or ParamArray."
		    
		  case 132
		    r = "The Declare statement is illegal in XojoScript."
		    
		  case 133
		    r = "It is not legal to dereference a Ptr value in an XojoScript."
		    
		  case 134
		    r = "Delegate creation from Ptr values is not allowed in XojoScript."
		    
		  case 135
		    r = "Delegate constant definition."
		    
		  case 136
		    r = "Ambiguous interface method implementation."
		    
		  case 137
		    r = "Illegal explicit interface method implementation. The class does not claim to implement this interface."
		    
		  case 138
		    r = "The interface does not declare this method."
		    
		  case 139
		    r = "This method contains a #If without a closing #endif statement."
		    
		  case 140
		    r = "This interface contains a cyclical interface aggregation."
		    
		  case 141
		    r = "The Extends modifier cannot be used on a class method."
		    
		  case 142
		    r = "You cannot assign a non-value type to a value."
		    
		  case 143
		    r = "Duplicate attribute name."
		    
		  case 144
		    r = "Delegates cannot return structures."
		    
		  case 145
		    r = "You cannot use AddressOf on this method. Possible causes include using AddressOf on event declarations or soft declares."
		    
		  case 146
		    r = "You cannot use an Operator_Convert method to perform a convert-to operation on an interface."
		    
		  case 147
		    r = "The ElseIf statement is missing its condition."
		    
		  case 148
		    r = "This type cannot be used as an explicit constant type."
		    
		  case 149
		    r = "Recursive constant declaration error."
		    
		  case 150
		    r = "Custom error created using ""Error"" pragma."
		    
		  case 151
		    r = "The second operand to the ""Unused"" pragma must be a local variable or parameter."
		    
		  case 152
		    r = "The maximum units in last position parameter must be a constant."
		    
		  case 153
		    r = "The maximum units in last position parameter is out of range."
		    
		  case 154
		    r = "The StructureAlignment attribute's value must be of the following: 1, 2, 4, 8, 16, 32, 64, or 128."
		    
		  case 155
		    r = "Pair creation via the "":"" operator is not allowed in XojoScript."
		    
		  case 156
		    r = "Introspection via the GetTypeInfo operator is not allowed in XojoScript."
		    
		  case 157
		    r = "The For statement is missing its condition."
		    
		  case 158
		    r = "The While statement is missing its condition."
		    
		  case 159
		    r = "Unsigned integer used in negative step loops can cause an infinite loop."
		    
		  case 160
		    r = "Only objects can be used with the Is operator"
		    
		  case 161
		    r = "Only objects can be used with AddHandler and RemoveHandler."
		    
		  case 162
		    r = "The object you are passing to AddHandler does not have the specified event"
		    
		  case 163
		    r = "Converting Delegates to Ptrs is not allowed in XojoScript."
		    
		  case 164
		    r = "WeakAddressOf can only be used on instance methods."
		    
		  case 165
		    r = "Declares directly into the runtime via Lib """" are no longer allowed."
		    
		  case 166
		    r = "Objective-C declares must have at least one parameter (the target of the message send)."
		    
		  case 167
		    r = "The property being declared has a different type than the property it is shadowing."
		    
		  case 168
		    r = "A GoTo statement is trying to jump to a non-existent label."
		    
		  case 169
		    r = "'#pragma warning' requires a warning message."
		    
		  case 170
		    r = "'#pragma error' requires an error message."
		    
		  case 171
		    r = "Duplicate label."
		    
		  case 172
		    r = "Object properties cannot have default values"
		    
		  case 173
		    r = "Array properties cannot have default values"
		    
		  case 174
		    r = "For Each loops over iterable objects cannot be used in XojoScript"
		    
		  case 175
		    r = "This object does not implement the Iterable interface and cannot be used in a For Each loop"
		    
		  case 178
		    r = "This is a type name, not a variable; values can't be assigned to it"
		    
		  case 179
		    r = "This is a module, not a variable; values can't be assigned to it"
		    
		  case 180
		    r = "Can't find a type with this name"
		    
		  case 181
		    r = "Expected a type name but found %1 instead"
		    
		  case 182
		    r = "Can't find a type or module with this name"
		    
		  case 183
		    r = "Expected a type or module name here but found %1 instead"
		    
		  case 184
		    r = "Extension method %1 requires a conversion from %2 to %3; use CType to explicitly convert first"
		    
		  case 185
		    r = "Can't find a type with this name. Did you mean %1?"
		    
		  case 186
		    r = "Undefined operator. Type %1 does not define ""%2"" with type %3"
		    
		  case 187
		    r = "Undefined operator. Type %1 does not define ""%2""."
		    
		  case 188
		    r = "Cannot import %1 from %2 because it is Global, not Public."
		    
		  case 189
		    r = "Cannot import %1 from %2 because it is Private to its container, not Public."
		    
		  case 190
		    r = "Expected a value of type %1, but found a static namespace reference to %2."
		    
		  case 191
		    r = "Cannot create an instance of %1 with New because it is not a class."
		    
		  case 192
		    r = "Cannot create an instance of %1 with New because it is not a class. Did you mean %2?"
		    
		  case 193
		    r = " %1 is not available."
		    
		  case 194
		    r = "Too many arguments: got %1, expected only %2."
		    
		  case 195
		    r = "Too many arguments: got %1, expected no more than %2."
		    
		  case 196
		    r = "Not enough arguments: missing %3 value for parameter ""%4"""
		    
		  case 197
		    r = "Not enough arguments: got %1, expected %2."
		    
		  case 198
		    r = "Not enough arguments: got %1, expected at least %2."
		    
		  case 199
		    r = "Assignment accessor must be invoked by assigning a value."
		    
		  case 200
		    r = "This method cannot accept an assigned value (it lacks an Assigns parameter)."
		    
		  case 201
		    r = "Parameter ""%1"" expects %2, but this is %3."
		    
		  case 202
		    r = "Expected (%1), but these arguments are (%2)."
		    
		  case 203
		    r = "ParamArray ""%1"" expects values of %2, but this is %3."
		    
		  case 204
		    r = "Instance methods need an object: call this on an instance of %1."
		    
		  case 205
		    r = "Extension methods need a base expression: call this on a value of %1."
		    
		  case 206
		    r = "Static reference to instance method: call this on an instance of %1."
		    
		  case 207
		    r = "Static reference to extension method: call this on a value of %1."
		    
		  case 208
		    r = "This method extends %1, but the base expression is %2."
		    
		  case 209
		    r = "Cannot convert from %1 to %2 because %3 is protected."
		    
		  case 210
		    r = "Fixed-length string fields are no longer supported; use an array of Byte instead."
		    
		  case 211
		    r = "The GetTypeInfo operator is unavailable on iOS."
		    
		  case 212
		    r = "The Pair operator is unavailable on iOS."
		    
		  case 213
		    r = "Objective-C declares can only be called when building for iOS or OS X."
		    
		  end select
		  
		  r = ExpandMessage( r, errorInfo  )
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ExpandMessage(msg As String, info As Dictionary) As String
		  if info IsA Dictionary then
		    dim lastIndex as integer = info.Count - 1
		    for i as integer = 0 to lastIndex
		      dim param as string = "%" + str( i + 1 )
		      dim key as variant = info.Key( i )
		      dim value as variant = info.Value( key )
		      msg = msg.Replace( param, value )
		    next
		  end if
		  
		  return msg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WarningToString(warning As XojoScript.Warnings, warningInfo As Dictionary) As String
		  dim r as string = "Uknown warning"
		  
		  select case warning
		  case XojoScript.Warnings.ConversionPrecision
		    r = "Conversion precision"
		    
		  case XojoScript.Warnings.ConversionSign
		    r = "Conversion sign"
		    
		  case XojoScript.Warnings.Deprecated
		    r = "This has been deprecated"
		    
		  case XojoScript.Warnings.DeprecatedWithReplacement
		    r = "%1 has been deprecated, use %2 instead"
		    
		  case XojoScript.Warnings.FloatingPointComparison
		    r = "Floating point comparison"
		    
		  case XojoScript.Warnings.NameLookupChange
		    r = "Name lookup change"
		    
		  case XojoScript.Warnings.OldStyleConstructor
		    r = "Using old-style Constructor"
		    
		  case XojoScript.Warnings.ShadowedConstant
		    r = "Shadowed constant"
		    
		  case XojoScript.Warnings.ShadowedProperty
		    r = "Shadowed property"
		    
		  case XojoScript.Warnings.UnknownPragmaWarning
		    r = "Unknown pragma"
		    
		  case XojoScript.Warnings.UnusedEventParameter
		    r = "Unused event parameter"
		    
		  case XojoScript.Warnings.UnusedLocal
		    r = "Unused local variable"
		    
		  case XojoScript.Warnings.UnusedMethodParameter
		    r = "Unused method parameter"
		    
		  end select
		  
		  r = ExpandMessage( r, warningInfo )
		  
		  return r
		  
		End Function
	#tag EndMethod


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
