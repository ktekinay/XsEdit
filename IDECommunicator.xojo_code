#tag Module
Protected Module IDECommunicator
	#tag Method, Flags = &h1
		Protected Function FindIPCPath() As String
		  // Find a path for our temp file.
		  Dim parent As FolderItem
		  
		  // fix fb 3230 - njp - Sep 4, 2008
		  Try
		    parent = Volume(0).Child("tmp")
		  Catch err As NilObjectException
		    parent = Nil
		  End Try
		  
		  If parent Is Nil Or Not parent.exists Or Not parent.IsWriteable Then
		    // more fixes for fb 3230 - njp - Sep 16, 2008 .. mostly becuase WUBI installed Ubuntu is really odd and Volume(0) fails
		    Try
		      parent = Volume(0).Child("var").Child("tmp")
		    Catch err As NilObjectException
		      parent = Nil
		    End Try
		  End If
		  
		  If parent Is Nil Or Not parent.exists Or Not parent.IsWriteable Then
		    // more fixes for fb 3230 - njp - Sep 16, 2008 .. mostly becuase WUBI installed Ubuntu is really odd and Volume(0) fails
		    Try
		      parent = SpecialFolder.Temporary
		    Catch err As NilObjectException
		      parent = Nil
		    End Try
		  End If
		  
		  If parent Is Nil Or Not parent.exists Or Not parent.IsWriteable Then
		    // more fixes for fb 3230 - njp - Sep 16, 2008 .. mostly becuase WUBI installed Ubuntu is really odd and Volume(0) fails
		    Try
		      parent = SpecialFolder.Home
		    Catch err As NilObjectException
		      parent = Nil
		    End Try
		  End If
		  
		  // fix fb 3230 - njp - Sep 4, 2008
		  Try
		    Const ipcpath = "XojoIDE"
		    '#If DebugBuild
		    'Return parent.Child("DEBUG"+ipcpath).ShellPath
		    '#Else
		    Return parent.Child(ipcpath).ShellPath
		    '#EndIf
		  Catch err As NilObjectException
		    Return ""
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReportError(errorCode As Integer)
		  // A socket error has occurred.  If you're using this module
		  // in your own code, you'll probably want to replace this
		  // with some error reporting mechanism that fits into your app.
		  
		  #If Not TargetHasGUI
		    stderr.WriteLine "Socket error: " + Str(errorCode)
		  #EndIf
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SendScript(sourceCode As String, timeout as Integer = 7200)
		  // Send the given source to the IDE.
		  //Default timeout, 7200 ticks = 2 minutes
		  
		  Dim endTime As Integer = Ticks + timeout
		  Dim sock As IPCSocket
		  While Ticks < endTime
		    sock = New IPCSocket
		    sock.Path = FindIPCPath
		    sock.Connect
		    While Not sock.IsConnected And sock.LastErrorCode = 0
		      sock.Poll
		    Wend
		    If sock.IsConnected Then Exit
		    App.DoEvents( 1000 )
		  Wend
		  If sock = Nil Then
		    ReportError 0
		    Return
		  Elseif sock.LastErrorCode <> 0 Then
		    ReportError sock.LastErrorCode
		    Return
		  End If
		  
		  sock.Write sourceCode
		  While sock.BytesLeftToSend > 0
		    sock.Poll
		    If sock.LastErrorCode <> 0 Then
		      ReportError(sock.LastErrorCode)
		      Return
		    End If
		  Wend
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = About
		== IDECommunicator
		Provides a way to send IDE Script commands to Xojo from an external
		app.
		
		=== Usage ===
		To use this project, build it and then run IDECommunicator from the command line.
		
		To get usage info:
		
		./IDECommunicator -?
		
		Usage:
		-i command: Send a one-line script command to the IDE to run
		-v : Display version info
		-c : Display communication path
		-? or -h: Display usage information
		file : Send the script to the IDE to run
		
		If neither a file or -i is used then the script is read from stdin and send when Control-D
		is pressed.
		
		=== Use In Your Projects ===
		You can use the IDECommunicator module in your own applications by calling the
		SendScript method and passing in the text of the script you want the IDE
		to run.
		
		
	#tag EndNote


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
