#tag Class
Protected Class IDEEmulator
	#tag Method, Flags = &h1
		Protected Sub Beep()
		  Extras.ShowWarning
		  REALbasic.Beep
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub BuildApp(buildType As Integer)
		  #pragma unused buildType
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function BuildApp(buildType As Integer, reveal As Boolean) As String
		  #pragma unused buildType
		  #pragma unused reveal
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ChangeDeclaration(name As String, parameters As String, returnType As String, scope As Integer, implement As String)
		  #pragma unused name
		  #pragma unused parameters
		  #pragma unused returnType
		  #pragma unused scope
		  #pragma unused implement
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ConstantValue(name As String) As String
		  #pragma unused name
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ConstantValue(name As String, Assigns value As String)
		  #pragma unused name
		  #pragma unused value
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBuildAppName() As String
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBuildLocation() As String
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CurrentBuildTarget() As Integer
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DebugBuild() As Boolean
		  Extras.ShowWarning
		  
		  return true
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DecryptItem(password As String) As Boolean
		  #pragma unused password
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoCommand(cmd As String)
		  #pragma unused cmd
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoShellCommand(cmd As String) As String
		  #pragma unused cmd
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function DoShellCommand(cmd As String, timeOut As Integer, ByRef resultCode As Integer) As String
		  #pragma unused cmd
		  #pragma unused timeOut
		  #pragma unused resultCode
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EncryptItem(password As String) As Boolean
		  #pragma unused password
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EndOfLine() As String
		  Extras.ShowWarning
		  return REALbasic.EndOfLine
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EnvironmentVariable(s As String) As String
		  Extras.ShowWarning
		  
		  //
		  // We can get the variable though
		  //
		  
		  try
		    
		    dim sh as new Shell
		    #if Global.TargetWindows 
		      sh.Execute "echo %" + s + "%"
		    #else
		      sh.Execute "echo ""${" + s + "}"""
		    #endif
		    
		    if sh.ErrorCode = 0 then
		      return sh.Result
		    else
		      return ""
		    end if
		    
		  catch err as RuntimeException
		    if err isa EndException or err isa ThreadEndException then
		      raise err
		    end if
		    
		    return ""
		  end try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewConsoleProject()
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewGUIProject()
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewiOSProject()
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub NewWebProject()
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub OpenFile(filePath As String)
		  #pragma unused filePath
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ProjectItem() As String
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ProjectShellPath() As String
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function PropertyValue(name As String) As String
		  #pragma unused name
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PropertyValue(name As String, Assigns value As String)
		  #pragma unused name
		  #pragma unused value
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub QuitIDE(saveChanges As Boolean)
		  #pragma unused saveChanges
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub RunScript(name As String)
		  #pragma unused name
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SelectProjectItem(itemPath As String) As Boolean
		  #pragma unused itemPath
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectWindow(index As Integer)
		  #pragma unused index
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SelectWindow(windowTitle As String)
		  #pragma unused windowTitle
		  
		  Extras.ShowWarning
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String) As String
		  Extras.ShowWarning
		  return ShowDialog( message, explanation, defaultButtonCaption, "", "", -1 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, cancelButtonCaption As String) As String
		  Extras.ShowWarning
		  return ShowDialog( message, explanation, defaultButtonCaption, cancelButtonCaption, "", -1 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, cancelButtonCaption As String, altButtonCaption As String) As String
		  Extras.ShowWarning
		  return ShowDialog( message, explanation, defaultButtonCaption, cancelButtonCaption, altButtonCaption, -1 )
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ShowDialog(message As String, explanation As String, defaultButtonCaption As String, cancelButtonCaption As String, altButtonCaption As String, icon As Integer) As String
		  Extras.ShowWarning
		  
		  message = message.Trim
		  explanation = explanation.Trim
		  defaultButtonCaption = defaultButtonCaption.Trim
		  cancelButtonCaption = cancelButtonCaption.Trim
		  altButtonCaption = altButtonCaption.Trim
		  
		  dim dlg as new MessageDialog
		  dlg.Message = message
		  dlg.Explanation = explanation
		  dlg.ActionButton.Caption = defaultButtonCaption
		  
		  if cancelButtonCaption = "" then
		    dlg.CancelButton.Visible = false
		  else
		    dlg.CancelButton.Visible = true
		    dlg.CancelButton.Caption = cancelButtonCaption
		  end if
		  
		  if altButtonCaption = "" then
		    dlg.AlternateActionButton.Visible = false
		  else
		    dlg.AlternateActionButton.Visible = true
		    dlg.AlternateActionButton.Caption = altButtonCaption
		  end if
		  
		  dlg.Icon = icon
		  dim result as MessageDialogButton = dlg.ShowModal
		  if result is nil then
		    return ""
		  else
		    return result.Caption
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ShowURL(url As String)
		  Extras.ShowWarning
		  
		  try
		    REALbasic.ShowURL url
		    
		  catch err as RuntimeException
		    if err isa EndException or err isa ThreadEndException then
		      raise err
		    end if
		    
		  end try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Speak(s As String)
		  Extras.ShowWarning
		  REALbasic.Speak s
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function SubLocations(baseLocation As String) As String
		  #pragma unused baseLocation
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TargetLinux() As Boolean
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TargetMacOS() As Boolean
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TargetWindows() As Boolean
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function TypeOfCurrentLocation() As String
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WindowCount() As Integer
		  Extras.ShowWarning
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WindowTitle(index As Integer) As String
		  #pragma unused index
		  
		  Extras.ShowWarning
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildCurrentPlatform As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildLanguage As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildLinux As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildMacCocoa As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		BuildMacMachOx86 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildRegion As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildWebDebugPort As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildWebPort As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildWebProtocol As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected BuildWin32 As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			  
			  dim c as new Clipboard
			  if c.TextAvailable then
			    return c.Text
			  else
			    return ""
			  end if
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Extras.ShowWarning
			  
			  dim c as new Clipboard
			  c.Text = value
			End Set
		#tag EndSetter
		Protected Clipboard As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  if mExtras is nil then
			    mExtras = new IDEEmulatorExtras
			  end if
			  
			  return mExtras
			End Get
		#tag EndGetter
		Attributes( exclude ) Private Extras As IDEEmulatorExtras
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected Location As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Attributes( exclude ) Private mExtras As IDEEmulatorExtras
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected SelLength As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected SelStart As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected SelText As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  Extras.ShowWarning
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  #pragma unused value
			  
			  Extras.ShowWarning
			End Set
		#tag EndSetter
		Protected Text As String
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BuildMacMachOx86"
			Group="Behavior"
			Type="Boolean"
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
