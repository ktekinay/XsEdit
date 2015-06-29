#tag Class
Protected Class IDEEmulator
	#tag Method, Flags = &h1
		Protected Function ConstantValue(name As String) As String
		  #pragma unused name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ConstantValue(name As String, Assigns value As String)
		  #pragma unused name
		  #pragma unused value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PropertyValue(name As String) As String
		  #pragma unused name
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PropertyValue(name As String, Assigns value As String)
		  #pragma unused name
		  #pragma unused value
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Text As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelText As String
	#tag EndProperty


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
			EditorType="MultiLineEditor"
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
