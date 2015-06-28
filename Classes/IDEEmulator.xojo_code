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


	#tag Constant, Name = kIsXsScript, Type = Boolean, Dynamic = False, Default = \"True", Scope = Protected
	#tag EndConstant


End Class
#tag EndClass
