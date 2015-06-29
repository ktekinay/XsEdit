#tag Window
Begin FindReceiverBaseWindow WndEditor
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   True
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   False
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   503097343
   MenuBarVisible  =   True
   MinHeight       =   400
   MinimizeButton  =   True
   MinWidth        =   600
   Placement       =   0
   Resizeable      =   True
   Title           =   "Untitled"
   Visible         =   True
   Width           =   600
   Begin Timer tmrReindent
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   0
      Period          =   50
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin CustomEditField fldCode
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoCloseBrackets=   False
      AutocompleteAppliesStandardCase=   True
      AutoDeactivate  =   True
      AutoIndentNewLines=   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Border          =   True
      BorderColor     =   &c88888800
      BracketHighlightColor=   &cFFFF0000
      CaretColor      =   &c00000000
      CaretLine       =   0
      CaretPos        =   0
      ClearHighlightedRangesOnTextChange=   True
      DirtyLinesColor =   &cFF999900
      disableReset    =   False
      DisplayDirtyLines=   False
      DisplayInvisibleCharacters=   False
      DisplayLineNumbers=   True
      DisplayRightMarginMarker=   False
      DoubleBuffer    =   False
      EnableAutocomplete=   True
      Enabled         =   True
      EnableLineFoldings=   False
      enableLineFoldingSetting=   False
      EraseBackground =   True
      GutterBackgroundColor=   &cEEEEEE00
      GutterSeparationLineColor=   &c88888800
      GutterWidth     =   0
      Height          =   385
      HelpTag         =   ""
      HighlightBlocksOnMouseOverGutter=   True
      HighlightMatchingBrackets=   True
      HighlightMatchingBracketsMode=   0
      ignoreRepaint   =   False
      IndentPixels    =   16
      IndentVisually  =   False
      Index           =   -2147483648
      InitialParent   =   ""
      KeepEntireTextIndented=   False
      Left            =   0
      leftMarginOffset=   4
      LineNumbersColor=   &c88888800
      LineNumbersTextFont=   "System"
      LineNumbersTextSize=   9
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaxVisibleLines =   0
      ReadOnly        =   False
      RightMarginAtPixel=   0
      RightScrollMargin=   150
      Scope           =   2
      ScrollPosition  =   0
      ScrollPositionX =   0
      selLength       =   0
      selStart        =   0
      SelText         =   ""
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TabWidth        =   4
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextHeight      =   0
      TextLength      =   0
      TextSelectionColor=   &c00000000
      TextSize        =   0
      ThickInsertionPoint=   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   585
   End
   Begin ScrollBar sbVertical
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   385
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   585
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Value           =   0
      Visible         =   True
      Width           =   15
   End
   Begin ScrollBar sbHorizontal
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   15
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LineStep        =   1
      LiveScroll      =   False
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Maximum         =   100
      Minimum         =   0
      PageStep        =   20
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   385
      Value           =   0
      Visible         =   True
      Width           =   585
   End
   Begin TBEditor tbToolbar
      Enabled         =   True
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   0
      Visible         =   True
      Width           =   100
   End
   Begin XojoScript XS
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Scope           =   2
      Source          =   ""
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin IPCSocket IDESocket
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Path            =   ""
      Scope           =   2
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Activate()
		  SetTitle()
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  #pragma unused appQuitting
		  
		  if not ContentsChanged then
		    return false
		  end if
		  
		  //
		  // The contents have changed
		  //
		  
		  dim dlg as new MessageDialog
		  dlg.Message = "Save changes before closing?"
		  dlg.ActionButton.Caption = "&Save"
		  dlg.CancelButton.Caption = "&Cancel"
		  dlg.CancelButton.Visible = true
		  dlg.AlternateActionButton.Caption = "&Don't Save"
		  dlg.AlternateActionButton.Visible = true
		  
		  dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		  if btn is dlg.CancelButton then
		    return true
		  elseif btn is dlg.AlternateActionButton then
		    return false
		  else // Save button
		    return ( not Save() )
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  EditUndo.Enabled = fldCode.CanUndo
		  EditRedo.Enabled = fldCode.CanRedo
		  
		  ScriptGoToErrorLine.Enabled = LastCompilerErrorLine > 0
		  
		  EditFindNext.Enabled = FindTerm <> ""
		  EditFindPrevious.Enabled = FindTerm <> ""
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindAll(find As String)
		  dim s as string = fldCode.Text
		  dim findLen as integer = find.Len
		  
		  dim pos as integer = s.InStr( find )
		  if pos = 0 then
		    beep
		    return
		  end if
		  
		  dim firstPos as integer = pos 
		  while pos > 0
		    fldCode.HighlightCharacterRange pos - 1, findLen, kColorFindAll
		    pos = s.InStr( pos + 1 + findLen, find )
		  wend
		  
		  fldCode.ScrollPosition = fldCode.LineNumAtCharPos( firstPos - 1 ) - 1
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindNext(find As String)
		  FindTerm = find
		  DoFindNext
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindPrevious(find As String)
		  FindTerm = find
		  DoFindPrevious
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  dim hd as new HighlightDefinition
		  if not hd.LoadFromXml( App.ResourcesFolder.Child( "Syntax Definitions" ).Child( "XojoScript.xml" ) ) then
		    MsgBox "Could not load syntax definition"
		    quit
		  end if
		  
		  fldCode.SyntaxDefinition = hd
		  
		  SetAutocompleteWords()
		  SetCEDPrefs()
		  
		  fldCode.SetScrollbars( sbHorizontal, sbVertical )
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceAll(find As String, replacement As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceAndFindNext(find As String, replacement As String)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceOne(find As String, replacement As String)
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditFindNext() As Boolean Handles EditFindNext.Action
			DoFindNext
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditFindPrevious() As Boolean Handles EditFindPrevious.Action
			DoFindPrevious
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditRedo() As Boolean Handles EditRedo.Action
			fldCode.Redo
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditUndo() As Boolean Handles EditUndo.Action
			fldCode.Undo
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			if FileClose.Text = "Close All" then
			App.CloseAllWindows
			return false
			else
			self.Close
			return true
			end if
			
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSave() As Boolean Handles FileSave.Action
			call Save()
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAs() As Boolean Handles FileSaveAs.Action
			call SaveAs()
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ScriptCompile() As Boolean Handles ScriptCompile.Action
			self.ScriptCompile
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ScriptGoToErrorLine() As Boolean Handles ScriptGoToErrorLine.Action
			ScrollToErrorLine
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ScriptGoToLine() As Boolean Handles ScriptGoToLine.Action
			dim l as integer = WndGoToLine.ShowModalWithin( self, fldCode.LineCount )
			if l > -1 then
			//
			// l is one-based but lines are zro-based
			//
			fldCode.ScrollPosition = l - 2
			fldCode.SelectLine l - 1
			end if
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ScriptRun() As Boolean Handles ScriptRun.Action
			self.ScriptTestRun
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ScriptRunInIDE() As Boolean Handles ScriptRunInIDE.Action
			self.ScriptRunInIDE
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Function CharPosOfNext(find As String) As Integer
		  //
		  // Wrap around
		  //
		  
		  dim s as string = fldCode.Text
		  dim pos as integer = s.InStr( fldCode.SelStart + 1 + fldCode.SelLength, find )
		  if pos = 0 then
		    pos = s.InStr( find )
		  end if
		  
		  return pos - 1 // Zero based
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CharPosOfPrevious(find As String) As Integer
		  //
		  // Wrap around
		  //
		  if find = "" then
		    return -1
		  end if
		  
		  dim findLen as integer = find.Len
		  
		  dim curPos as integer = fldCode.SelStart + 1
		  if curPos = 0 then
		    return -1
		  end if
		  
		  dim s as string = fldCode.Text
		  
		  dim start as integer
		  dim pos as integer = -1 // This is zero-based
		  dim nextPos as integer = s.InStr( find )
		  if nextPos = 0 then
		    return -1
		  end if
		  
		  //
		  // See if we have to wrap around
		  //
		  if nextPos >= curPos then
		    curPos = s.Len + 1
		  end if
		  
		  while nextPos > 0 and nextPos < curPos
		    pos = nextPos - 1
		    nextPos = s.InStr( nextPos + findLen, find )
		  wend
		  
		  return pos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoFindNext()
		  dim pos as integer = CharPosOfNext( FindTerm )
		  if pos > -1 then
		    fldCode.SelStart = pos
		    fldCode.SelLength = FindTerm.Len
		  else
		    beep
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoFindPrevious()
		  dim pos as integer = CharPosOfPrevious( FindTerm )
		  if pos > -1 then
		    fldCode.SelStart = pos
		    fldCode.SelLength = FindTerm.Len
		  else
		    beep
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightCode(location As XojoScriptLocation, msg As String, c As Color, lineIcon As Picture)
		  dim startPosition as integer = location.Character
		  dim endPosition as integer = location.EndCharacter
		  dim length as integer = endPosition - startPosition
		  
		  fldCode.HighlightCharacterRange( startPosition, length, c )
		  
		  dim startLine as integer = fldCode.LineNumAtCharPos( startPosition )
		  if lineIcon isa Picture then
		    dim endLine as integer = fldCode.LineNumAtCharPos( endPosition )
		    
		    for l as integer = startLine to endLine
		      fldCode.LineIcon( l ) = lineIcon
		    next
		  end if
		  
		  //
		  // Scroll to that line
		  //
		  LastCompilerErrorLine = startLine
		  ScrollToErrorLine
		  
		  fldCode.HelpTag = msg
		  
		  #pragma warning "How to handle the msg?"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightCode(location As XojoScriptLocation, error As XojoScript.Errors, errorInfo As Dictionary, c As Color)
		  dim errorString as string = M_XojoScript.ErrorToString( error, errorInfo )
		  
		  
		  HighlightCode( location, errorString, c, errordata )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDocument(f As FolderItem)
		  if f is nil or not f.Exists then
		    MsgBox "Could not open the document."
		    self.Close
		  end if
		  
		  MyDocumentAlias = f
		  fldCode.Text = f.TextContents_MTC( Encodings.UTF8 )
		  CodeBeforeChanges = fldCode.Text
		  
		  fldCode.ResetUndo
		  fldCode.ResetUndoDirtyFlag
		  
		  self.ContentsChanged = false
		  SetTitle()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Save() As Boolean
		  if MyDocument is nil then
		    return SaveAs()
		  end if
		  
		  MyDocument.TextContents_MTC = fldCode.Text
		  ContentsChanged = false
		  fldCode.ClearDirtyLines
		  
		  CodeBeforeChanges = fldCode.Text
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SaveAs() As Boolean
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Save the script:"
		  dlg.Filter = DocumentTypes.XojoScript
		  dlg.SuggestedFileName = "Script.xojo_script"
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  if f is nil then
		    return false
		  end if
		  
		  MyDocumentAlias = f
		  return Save()
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptCompile()
		  LastCompilerErrorCode = -1
		  LastCompilerErrorLine = -1
		  
		  XS.Source = fldCode.Text
		  
		  fldCode.ClearLineIcons
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.HelpTag = ""
		  
		  //
		  // Handle the compiling first
		  //
		  
		  XS.Reset
		  XS.Context = new IDEEmulator
		  
		  call XS.Precompile( XojoScript.OptimizationLevels.None )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptRunInIDE()
		  ScriptCompile
		  if LastCompilerErrorCode <> -1 then
		    return
		  end if
		  
		  try
		    dim endTime as Integer = Ticks + 120
		    IDESocket.Path = IDECommunicator.FindIPCPath
		    
		    if IDESocket.Path = "" then
		      dim ex as new RuntimeException
		      ex.Message = "Could not find XojoIDE IPC socket"
		      raise ex
		    end if
		    
		    IDESocket.Connect
		    
		    while Ticks < endTime
		      while not IDESocket.IsConnected and IDESocket.LastErrorCode = 0
		        IDESocket.Poll
		      wend
		      
		      if IDESocket.IsConnected then
		        exit
		      end if
		    wend
		    
		    if IDESocket.LastErrorCode <> 0 then
		      dim ex as new RuntimeException
		      ex.ErrorNumber = IDESocket.LastErrorCode
		      ex.Message = "Could not connect to IDE"
		      raise ex
		    end if
		    
		    IDESocket.Write fldCode.Text
		    while IDESocket.BytesLeftToSend > 0
		      IDESocket.Poll
		      if IDESocket.LastErrorCode <> 0 then
		        dim ex as new RuntimeException
		        ex.ErrorNumber = IDESocket.LastErrorCode
		        ex.Message = "Could not communicate with IDE"
		        raise ex
		      end if
		    wend
		    
		    IDESocket.Close
		    
		    //
		    // If we get here, we assume it worked, so activate it
		    //
		    
		    #if TargetMacOS then
		      dim sh as new Shell
		      sh.Execute "osascript -e 'tell app id ""com.xojo.xojo"" to activate'"
		    #endif
		    
		  catch ex as RuntimeException
		    if IDESocket.IsConnected then
		      IDESocket.Close
		    end if
		    
		    MsgBox ex.Message + ": " + Str(ex.ErrorNumber)
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptTestRun()
		  ScriptCompile
		  
		  if LastCompilerErrorCode = -1 then
		    #pragma BreakOnExceptions false
		    XS.Run
		    #pragma BreakOnExceptions default
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScrollToErrorLine()
		  if LastCompilerErrorLine < 1 then
		    beep
		  else
		    fldCode.ScrollPosition = LastCompilerErrorLine - 1 // The line before
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetAutocompleteWords()
		  Autocompleter = new PaTrie
		  
		  for each keyword as String in ReplaceLineEndings( kAutoCompleteKeywords, &uA ).Trim.Split( &uA )
		    keyword = keyword.Trim
		    if keyword <> "" then
		      call Autocompleter.AddKey( keyword, nil )
		    end if
		  next
		  
		  //
		  // Add all methods and properties from IDEEmulator
		  //
		  
		  dim ti as Introspection.TypeInfo = GetTypeInfo( IDEEmulator )
		  
		  //
		  // Properties
		  //
		  dim props() as Introspection.PropertyInfo = ti.GetProperties
		  for each prop as Introspection.PropertyInfo in props
		    call Autocompleter.AddKey( prop.Name, nil )
		  next
		  
		  //
		  // Methods
		  //
		  dim methods() as Introspection.MethodInfo = ti.GetMethods
		  for each method as Introspection.MethodInfo in methods
		    call Autocompleter.AddKey( method.Name, nil )
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCEDPrefs()
		  fldCode.TextFont = "Monaco"
		  
		  fldCode.AutoIndentNewLines = true
		  fldCode.IndentVisually = true
		  
		  fldCode.Border = false
		  fldCode.UseFocusRing  = false
		  
		  fldCode.DisplayDirtyLines = true
		  fldCode.EnableLineFoldings = true
		  
		  fldCode.HighlightMatchingBrackets = true
		  fldCode.HighlightMatchingBracketsMode = 2
		  fldCode.EnableAutocomplete = true
		  fldCode.AutocompleteAppliesStandardCase = false
		  
		  fldCode.ClearHighlightedRangesOnTextChange = true
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetTitle()
		  if MyDocument is nil then
		    self.Title = "Untitled"
		  else
		    self.Title = MyDocument.Name
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Autocompleter As PaTrie
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CodeBeforeChanges As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FindTerm As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastCompilerErrorCode As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastCompilerErrorLine As Integer = -1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if MyDocumentAlias is nil then
			    return nil
			  else
			    return MyDocumentAlias.Resolve
			  end if
			  
			End Get
		#tag EndGetter
		MyDocument As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private MyDocumentAlias As FolderItemAlias
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ReplaceTerm As String
	#tag EndProperty


	#tag Constant, Name = kAutoCompleteKeywords, Type = String, Dynamic = False, Default = \"AddHandler\nAddressOf\nArray\nAs\nAssigns\nBreak\nByRef\nByte\nByVal\nCall\nCase\nCatch\nClass\nConst\nContinue\nCType\nDeclare\nDim\nDo\nDouble\nDownTo\nEach\nElse\nElseIf\nEnd\nEnum\nEvent\nException\nExit\nExtends\nFalse\nFinally\nFor\nFunction\nGetTypeInfo\nGOTO\nHandles\nIf\nImplements\nInput\nInterface\nIn\nInherits\nInt8\nInt16\nInt32\nInt64\nInteger\nLib\nLoop\nModule\nNext\nNil\nOptional\nParamArray\nPrint\nPrivate\nProtected\nRaise\nRaiseEvent\nRedim\nRemoveHandler\nReturn\nSelect\nSoft\nStatic\nStep\nString\nStructure\nSub\nSuper\nText\nThen\nTo\nTrue\nTry\nUint8\nUInt16\nUInt32\nUInt64\nUInteger\nUntil\nUsing\nWend\nWhile", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorCurrentLine, Type = Color, Dynamic = False, Default = \"&cF4FF9C", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kColorError, Type = Color, Dynamic = False, Default = \"&cFF00007F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorFindAll, Type = Color, Dynamic = False, Default = \"&c00FF00", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorWarning, Type = Color, Dynamic = False, Default = \"&cDCE83D7F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kToolbarCompile, Type = String, Dynamic = False, Default = \"Compile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kToolbarRunInIDE, Type = String, Dynamic = False, Default = \"Run in IDE", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kToolbarTestRun, Type = String, Dynamic = False, Default = \"Test Run", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events tmrReindent
	#tag Event
		Sub Action()
		  fldCode.ReindentText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events fldCode
	#tag Event
		Sub TextChanged()
		  tmrReindent.Mode = Timer.ModeSingle
		  tmrReindent.Reset
		  
		  me.ClearLineIcons
		  me.HelpTag = ""
		  
		  ContentsChanged = StrComp( CodeBeforeChanges, fldCode.Text, 0 ) <> 0
		  if not ContentsChanged then
		    me.ClearDirtyLines
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Function ShouldTriggerAutocomplete(Key as string, hasAutocompleteOptions as boolean) As boolean
		  return Key.Asc = 9 and hasAutocompleteOptions
		End Function
	#tag EndEvent
	#tag Event
		Function AutocompleteOptionsForPrefix(prefix as string) As AutocompleteOptions
		  dim options as new AutocompleteOptions
		  options.Prefix = prefix
		  dim commonPrefix as string
		  options.Options = Autocompleter.WordsForPrefix( prefix, commonPrefix )
		  options.LongestCommonPrefix = commonPrefix
		  
		  return options
		End Function
	#tag EndEvent
	#tag Event
		Function KeyDown(key as string) As boolean
		  #pragma unused key
		  
		  //
		  // Ignore the command keys
		  //
		  
		  #if TargetMacOS then
		    
		    if Keyboard.CommandKey then
		      beep
		      return true
		    end if
		    
		  #else
		    
		    if Keyboard.ControlKey then
		      beep
		      return true
		    end if
		    
		  #endif
		End Function
	#tag EndEvent
	#tag Event
		Function UseBackgroundColorForLine(lineIndex as integer, byref lineBackgroundColor as color) As boolean
		  dim startLine as integer = me.LineNumAtCharPos( me.SelStart )
		  dim endLine as integer = me.LineNumAtCharPos( me.SelStart + me.SelLength )
		  
		  if lineIndex >= startLine and lineIndex <= endLine then
		    lineBackgroundColor = kColorCurrentLine
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events sbVertical
	#tag Event
		Sub ValueChanged()
		  if me.Value < 0 then
		    me.Value = 0
		  end if
		  
		  fldCode.ScrollPosition = me.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events sbHorizontal
	#tag Event
		Sub ValueChanged()
		  if me.Value < 0 then
		    me.Value = 0
		  end if
		  
		  fldCode.ScrollPositionX = me.Value
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbToolbar
	#tag Event
		Sub Action(item As ToolItem)
		  select case item.Caption
		  case kToolbarCompile
		    ScriptCompile
		    
		  case kToolbarTestRun
		    ScriptTestRun
		    
		  case kToolbarRunInIDE
		    ScriptRunInIDE
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events XS
	#tag Event
		Sub RuntimeError(error As RuntimeException)
		  if error isa EndException or error isa ThreadEndException then
		    #pragma BreakOnExceptions false
		    raise error // Pass it on
		    #pragma BreakOnExceptions default
		  end if
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType( error )
		  dim type as string = ti.Name
		  
		  dim msg as string = "A runtime exception of type " + type + " has been raised. I wish I knew where."
		  
		  dim dlg as new MessageDialog
		  dlg.Message = msg
		  dlg.CancelButton.Visible = false
		  dlg.ActionButton.Caption = "Darn"
		  
		  call dlg.ShowModalWithin( self )
		  
		  #pragma warning "Finish this!"
		End Sub
	#tag EndEvent
	#tag Event
		Sub CompilerWarning(location As XojoScriptLocation, warning As XojoScript.Warnings, warningInfo As Dictionary)
		  #if false then
		    dim msg as string = M_XojoScript.WarningToString( warning, warningInfo )
		    HighlightCode( location, msg, kColorWarning, nil )
		  #endif
		  
		  #pragma warning "Not handling compiler warnings at all right now"
		  #pragma unused location
		  #pragma unused warning
		  #pragma unused warningInfo
		End Sub
	#tag EndEvent
	#tag Event
		Function CompilerError(location As XojoScriptLocation, error As XojoScript.Errors, errorInfo As Dictionary) As Boolean
		  'select case integer( error )
		  'case 4, 87 // Obsolete, ignore it
		  'return false
		  '
		  'case else
		  LastCompilerErrorCode = integer( error )
		  HighlightCode( location, error, errorInfo, kColorError )
		  return true // One at a time
		  
		  'end select
		End Function
	#tag EndEvent
	#tag Event
		Sub Print(msg As String)
		  dim dlg as new MessageDialog
		  dlg.Title = "Print"
		  dlg.Message = msg
		  dlg.CancelButton.Visible = false
		  
		  call dlg.ShowModalWithin( self )
		End Sub
	#tag EndEvent
	#tag Event
		Function Input(prompt As String) As String
		  dim dlg as new DlgInput
		  return dlg.ShowModalWithin( self, prompt )
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
