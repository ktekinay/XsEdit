#tag Class
Protected Class XsEditPreferences
Inherits Preferences
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


	#tag Constant, Name = kDefaultCodeFont, Type = String, Dynamic = False, Default = \"Monaco", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDefaultCodeFontSize, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFont, Type = String, Dynamic = False, Default = \"CodeFont", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kPrefCodeFontSize, Type = String, Dynamic = False, Default = \"CodeFontSize", Scope = Public
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
			Name="mCodeFont"
			Group="Behavior"
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
