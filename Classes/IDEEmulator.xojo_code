#tag Class
Protected Class IDEEmulator
	#tag Method, Flags = &h1
		Protected Sub Beep()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function BuildApp(buildType As Integer, reveal As Boolean = False) As String
		  #pragma unused buildType
		  #pragma unused reveal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangeDeclaration(name As String, parameters As String, returnType As String, scope As Integer, implement As String)
		  #pragma unused name
		  #pragma unused parameters
		  #pragma unused returnType
		  #pragma unused scope
		  #pragma unused implement
		  
		End Sub
	#tag EndMethod

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
		Protected Function CurrentBuildAppName() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBuildLocation() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBuildTarget() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecryptItem(password As String) As Boolean
		  #pragma unused password
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoCommand(cmd As String)
		  #pragma unused cmd
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoShellCommand(cmd As String) As String
		  #pragma unused cmd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoShellCommand(cmd As String, timeOut As Integer, ByRef resultCode As Integer) As String
		  #pragma unused cmd
		  #pragma unused timeOut
		  #pragma unused resultCode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EncryptItem(password As String) As Boolean
		  #pragma unused password
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EndOfLine() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewConsoleProject()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewGUIProject()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewWebProject()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub OpenFile(filePath As String)
		  #pragma unused filePath
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ProjectItem() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ProjectShellPath() As String
		  
		End Function
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

	#tag Method, Flags = &h1
		Protected Sub QuitIDE(saveChanges As Boolean)
		  #pragma unused saveChanges
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RunScript(name As String)
		  #pragma unused name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectProjectItem(itemPath As String) As Boolean
		  #pragma unused itemPath
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectWindow(index As Integer)
		  #pragma unused index
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectWindow(windowTitle As String)
		  #pragma unused windowTitle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String) As String
		  #pragma unused message
		  #pragma unused explanation
		  #pragma unused defaultButtonCaption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, CancelButtonCaption As String) As String
		  #pragma unused message
		  #pragma unused explanation
		  #pragma unused defaultButtonCaption
		  #pragma unused CancelButtonCaption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, CancelButtonCaption As String, altButtonCaption As String) As String
		  #pragma unused message
		  #pragma unused explanation
		  #pragma unused defaultButtonCaption
		  #pragma unused CancelButtonCaption
		  #pragma unused altButtonCaption
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, CancelButtonCaption As String, altButtonCaption As String, icon As Integer) As String
		  #pragma unused message
		  #pragma unused explanation
		  #pragma unused defaultButtonCaption
		  #pragma unused CancelButtonCaption
		  #pragma unused altButtonCaption
		  #pragma unused icon
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ShowURL(url As String)
		  #pragma unused url
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Speak(s As String)
		  #pragma unused s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SubLocation(baseLocation As String) As String
		  #pragma unused baseLocation
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TypeOfCurrentLocation() As String
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WindowCount() As Integer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub WindowTitle(index As Integer)
		  #pragma unused index
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected BuildCurrentPlatform As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildLanguage As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildLinux As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildMacCocoa As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildMacMachOx86 As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildRegion As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildWebDebugPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildWebPort As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildWebProtocol As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected BuildWin32 As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Clipboard As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Location As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelLength As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelStart As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected SelText As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Text As String
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
	#tag EndViewBehavior
End Class
#tag EndClass
