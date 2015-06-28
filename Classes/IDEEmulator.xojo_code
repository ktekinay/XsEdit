#tag Class
Protected Class IDEEmulator
	#tag Method, Flags = &h1
		Protected Function ConstantValue(name As String) As String
		  
		  select case name
		  case "kIsXsScript"
		    return "True"
		    
		  case else
		    
		    #pragma warning "Finish this!"
		    
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub EmulateText()
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mText As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mText = value
			End Set
		#tag EndSetter
		Text As String
	#tag EndComputedProperty


	#tag Constant, Name = kIsXsScript, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
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
			Name="Text"
			Group="Behavior"
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
