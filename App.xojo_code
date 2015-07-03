#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub EnableMenuItems()
		  //
		  // FileClose
		  //
		  
		  if Keyboard.AsyncOptionKey then
		    FileClose.Text = "Close All"
		    FileClose.KeyboardShortcut = "cmd-opt-W"
		  else
		    FileClose.Text = "Close"
		    FileClose.KeyboardShortcut = "cmd-W"
		  end if
		End Sub
	#tag EndEvent

	#tag Event
		Function HandleAppleEvent(theEvent As AppleEvent, eventClass As String, eventID As String) As Boolean
		  #pragma unused theEvent
		  
		  #if not TargetMacOS
		    #pragma unused eventClass
		    #pragma unused eventID
		    
		  #else
		    
		    if StrComp( eventClass, "aevt", 0 ) = 0 and StrComp( eventID, "rapp", 0 ) = 0 then
		      dim isVisibleWindow as boolean
		      dim lastWindowIndex as integer = WindowCount - 1
		      for i as integer = 0 to lastWindowIndex
		        if Window( i ).Visible then
		          isVisibleWindow = true
		          exit
		        end if
		      next
		      
		      if not isVisibleWindow then
		        NewDocument
		      end if
		      
		      return true
		    end if
		    
		  #endif
		End Function
	#tag EndEvent

	#tag Event
		Sub NewDocument()
		  dim w as new WndEditor
		  w.Show
		End Sub
	#tag EndEvent

	#tag Event
		Sub OpenDocument(item As FolderItem)
		  dim editor as WndEditor
		  
		  //
		  // See if the first window is available
		  //
		  for i as integer = 0 to WindowCount - 1
		    dim wnd as Window = Window( i )
		    if wnd IsA WndEditor then
		      dim maybe as WndEditor = WndEditor( wnd )
		      if editor is nil and maybe.MyDocument is nil and not maybe.ContentsChanged then
		        editor = maybe
		        //
		        // But keep going to see if the document is open elsewhere
		        //
		        
		      elseif maybe.MyDocument IsA FolderItem and maybe.MyDocument.NativePath = item.NativePath then
		        //
		        // It's already open
		        //
		        maybe.Show
		        return // Early exit
		      end if
		    end if
		  next i
		  
		  if editor is nil then
		    editor = new WndEditor
		  else
		    editor.Show
		  end if
		  
		  editor.OpenDocument item
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileNew() As Boolean Handles FileNew.Action
			NewDocument
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			dim dlg as new OpenDialog
			dlg.PromptText = "Select a XojoScript document:"
			dlg.Filter = DocumentTypes.XojoScript
			
			dim f as FolderItem = dlg.ShowModal
			if f IsA FolderItem then
			OpenDocument f
			end if
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpAbout() As Boolean Handles HelpAbout.Action
			WndAbout.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpXojoScriptingLanguageDocs() As Boolean Handles HelpXojoScriptingLanguageDocs.Action
			ShowURL "http://docs.xojo.com/index.php/Scripting_Language"
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub CloseAllWindows()
		  for i as integer = WindowCount - 1 downto 0
		    Window( i ).Close
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mPrefs As XsEditPreferences
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mPrefs is nil then
			    mPrefs = new XsEditPreferences( "com.mactechnologiesconsulting.xsedit" )
			  end if
			  
			  return mPrefs
			End Get
		#tag EndGetter
		Prefs As XsEditPreferences
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim f as FolderItem = App.ExecutableFile.Parent
			  
			  #if TargetMacOS then
			    f = f.Parent.Child( "Resources" )
			  #else
			    f = f.Child( "Resources" )
			  #endif
			  
			  return f
			End Get
		#tag EndGetter
		ResourcesFolder As FolderItem
	#tag EndComputedProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
