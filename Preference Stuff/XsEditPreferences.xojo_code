#tag Class
Protected Class XsEditPreferences
Inherits Preferences
	#tag Method, Flags = &h1000
		Sub Constructor(applicationId as String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(applicationId)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContextPrefValue(contextName As String) As ContextPreferences
		  return ContextPreferences( ObjectValue( contextName + " Context" , new ContextPreferences( App.SyntaxDefinitionFile, contextName ) ) )
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContextPrefValue(contextName As String, Assigns value As ContextPreferences)
		  ObjectValue( contextName + " Context" ) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InterestingContextPrefs() As ContextPreferences()
		  dim interestingNames() as string = array( _
		  "Keywords", "BasicTypes", "Doubles", "Integers", "String", "PreProcessor", "Comment" _
		  )
		  
		  dim arr() as ContextPreferences
		  for i as integer = 0 to interestingNames.Ubound
		    dim contextName as string = interestingNames( i )
		    arr.Append ContextPrefValue( contextName )
		  next
		  
		  return arr
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function InterestingContextPrefsDictionary() As Dictionary
		  dim arr() as ContextPreferences = InterestingContextPrefs
		  dim d as new Dictionary
		  for each pref as ContextPreferences in arr
		    d.Value( pref.Name ) = pref
		  next
		  
		  return d
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ColorValue( kPrefActiveLineHighlightColor, kDefaultActiveHighlightColor )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ColorValue( kPrefActiveLineHighlightColor ) = value
			End Set
		#tag EndSetter
		ActiveLineHighlightColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefAutoCloseBrackets, kDefaultAutoCloseBrackets )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefAutoCloseBrackets ) = value
			End Set
		#tag EndSetter
		AutoCloseBrackets As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefAutocompleteAppliesStandardCase, kDefaultAutocompleteAppliesStandardCase )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefAutocompleteAppliesStandardCase ) = value
			End Set
		#tag EndSetter
		AutocompleteAppliesStandardCase As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return StringValue( kPrefCodeFont, kDefaultCodeFont )
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  StringValue( kPrefCodeFont ) = value
			  
			End Set
		#tag EndSetter
		CodeFont As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return IntegerValue( kPrefCodeFontSize, kDefaultCodeFontSize )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  IntegerValue( kPrefCodeFontSize ) = value
			End Set
		#tag EndSetter
		CodeFontSize As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefShowInvisibles, kDefaultShowInvisibles )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefShowInvisibles ) = value
			  
			End Set
		#tag EndSetter
		ShowInvisibles As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefShowLineNumbers, kDefaultShowLineNumbers )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefShowLineNumbers ) = value
			End Set
		#tag EndSetter
		ShowLineNumbers As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefShowToolbar, kDefaultShowToolbar )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefShowToolbar ) = value
			End Set
		#tag EndSetter
		ShowToolbar As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BooleanValue( kPrefUseActiveLineHighlight, kDefaultUseActiveLineHighlight )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  BooleanValue( kPrefUseActiveLineHighlight ) = value
			  
			End Set
		#tag EndSetter
		UseActiveLineHighlight As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kDefaultActiveHighlightColor, Type = Color, Dynamic = False, Default = \"&cF4FF9C", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultAutoCloseBrackets, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultAutocompleteAppliesStandardCase, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultCodeFont, Type = String, Dynamic = False, Default = \"System", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultCodeFontSize, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultShowInvisibles, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultShowLineNumbers, Type = Boolean, Dynamic = False, Default = \"True", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultShowToolbar, Type = Boolean, Dynamic = False, Default = \"True", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultUseActiveLineHighlight, Type = Boolean, Dynamic = False, Default = \"True", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefActiveLineHighlightColor, Type = String, Dynamic = False, Default = \"ActiveLine Highlight Color", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefAutoCloseBrackets, Type = String, Dynamic = False, Default = \"AutoCloseBrackets", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefAutocompleteAppliesStandardCase, Type = String, Dynamic = False, Default = \"AutocompleteAppliesStandardCase", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFont, Type = String, Dynamic = False, Default = \"CodeFont", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFontSize, Type = String, Dynamic = False, Default = \"CodeFontSize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefShowInvisibles, Type = String, Dynamic = False, Default = \"ShowInvisibles", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefShowLineNumbers, Type = String, Dynamic = False, Default = \"ShowLineNumbers", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefShowToolbar, Type = String, Dynamic = False, Default = \"ShowToolbar", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefUseActiveLineHighlight, Type = String, Dynamic = False, Default = \"Use Active Line Highlight", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveLineHighlightColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCloseBrackets"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocompleteAppliesStandardCase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodeFont"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CodeFontSize"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="ShowInvisibles"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowLineNumbers"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShowToolbar"
			Group="Behavior"
			Type="Boolean"
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
		#tag ViewProperty
			Name="UseActiveLineHighlight"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
