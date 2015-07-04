#tag Class
Protected Class XsEditPreferences
Inherits Preferences
	#tag Method, Flags = &h1000
		Sub Constructor(applicationId as String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(applicationId)
		  
		  //
		  // Read the syntax definition
		  //
		  
		  dim hd as new HighlightDefinition
		  if not hd.LoadFromXml( App.SyntaxDefinitionFile ) then
		    MsgBox "Could not load syntax definition"
		    quit
		  end if
		  
		  for each context as HighlightContext in hd.Contexts
		    select case context.Name
		    case "String"
		      mDefaultColorStrings = context.HighlightColor
		      
		    case "Keywords"
		      mDefaultColorKeywords = context.HighlightColor
		      
		    case "BasicTypes"
		      mDefaultColorBasicTypes = context.HighlightColor
		      
		    case "Comment"
		      mDefaultColorComments = context.HighlightColor
		      
		    end select
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function kDefaultColorBasicTypes() As Color
		  return mDefaultColorBasicTypes
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function kDefaultColorComments() As Color
		  return mDefaultColorComments
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function kDefaultColorKeywords() As Color
		  return mDefaultColorKeywords
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function kDefaultColorStrings() As Color
		  return mDefaultColorStrings
		End Function
	#tag EndMethod


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
			  return ColorValue( kPrefColorBasicTypes, kDefaultColorBasicTypes )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ColorValue( kPrefColorBasicTypes ) = value
			End Set
		#tag EndSetter
		ColorBasicTypes As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ColorValue( kPrefColorComments, kDefaultColorComments )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ColorValue( kPrefColorComments ) = value
			  
			End Set
		#tag EndSetter
		ColorComments As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ColorValue( kPrefColorKeywords, kDefaultColorKeywords )
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ColorValue( kPrefColorKeywords ) = value
			End Set
		#tag EndSetter
		ColorKeywords As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ColorValue( kPrefColorStrings, kDefaultColorStrings )
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  ColorValue( kPrefColorStrings ) = value
			  
			End Set
		#tag EndSetter
		ColorStrings As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		mDefaultColorBasicTypes As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDefaultColorComments As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDefaultColorKeywords As Color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDefaultColorStrings As Color
	#tag EndProperty


	#tag Constant, Name = kDefaultAutoCloseBrackets, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultAutocompleteAppliesStandardCase, Type = Boolean, Dynamic = False, Default = \"False", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultCodeFont, Type = String, Dynamic = False, Default = \"Monaco", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultCodeFontSize, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefAutoCloseBrackets, Type = String, Dynamic = False, Default = \"AutoCloseBrackets", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefAutocompleteAppliesStandardCase, Type = String, Dynamic = False, Default = \"AutocompleteAppliesStandardCase", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFont, Type = String, Dynamic = False, Default = \"CodeFont", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFontSize, Type = String, Dynamic = False, Default = \"CodeFontSize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefColorBasicTypes, Type = String, Dynamic = False, Default = \"BasicTypesColor", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefColorComments, Type = String, Dynamic = False, Default = \"CommentsColor", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefColorKeywords, Type = String, Dynamic = False, Default = \"KeywordsColor", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefColorStrings, Type = String, Dynamic = False, Default = \"StringsColor", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
End Class
#tag EndClass
