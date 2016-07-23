#tag Class
Protected Class IDEEmulatorExtras
	#tag Method, Flags = &h0
		Sub ShowWarning()
		  if not WasWarningShown then
		    MsgBox "You are running an IDE script within XsEdit. " + _
		    "While the methods, functions, and properties available to you within the IDE are replicated here, " + _
		    "they are only to allow compilation and usually do not perform any true function or return a value."
		    WasWarningShown = true
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		WasWarningShown As Boolean
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WasWarningShown"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
