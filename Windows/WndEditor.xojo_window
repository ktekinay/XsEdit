#tag Window
Begin SearchReceiverWindowBase WndEditor Implements PreferenceWatcher
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
   Begin Timer tmrSetAutocompleteScript
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   0
      Period          =   10
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Timer tmrSetContentsChanged
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   0
      Period          =   250
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Timer tmrCheckForXojoIDE
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
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
		  AdjustRunInIDEButton
		  tmrCheckForXojoIDE.Mode = Timer.ModeMultiple
		End Sub
	#tag EndEvent

	#tag Event
		Function CancelClose(appQuitting as Boolean) As Boolean
		  #pragma unused appQuitting
		  
		  SetContentsChanged()
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
		Sub Close()
		  App.Prefs.UnregisterWatcher( self )
		End Sub
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  tmrCheckForXojoIDE.Mode = Timer.ModeOff
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  EditUndo.Enabled = fldCode.CanUndo
		  EditRedo.Enabled = fldCode.CanRedo
		  
		  if IsLineCommented( fldCode.LineNumAtCharPos( fldCode.SelStart ) ) then
		    EditComment.Text = App.kEditUncomment
		  else
		    EditComment.Text = App.kEditComment
		  end if
		  
		  ViewShowInvisibles.Checked = App.Prefs.ShowInvisibles
		  ViewShowLineNumbers.Checked = App.Prefs.ShowLineNumbers
		  
		  ScriptGoToErrorLine.Enabled = LastCompilerErrorLine > 0
		  
		  dim find as string = WndSearch.Options.FindTerm
		  EditFindNext.Enabled = find <> ""
		  EditFindPrevious.Enabled = find <> ""
		  
		  dim toggleToolbarText as string = if( App.Prefs.ShowToolbar, App.kViewHideToolbar, App.kViewShowToolbar )
		  if ViewToggleToolbar.Text <> toggleToolbarText then
		    ViewToggleToolbar.Text = toggleToolbarText
		  end if
		  
		  ScriptRunInIDE.Enabled = IsIDEAvailable
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindAll(options As SearchOptions)
		  dim find as string = options.FindTerm
		  
		  if find = "" then
		    beep
		    return
		  end if
		  
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.ClearLineIcons
		  
		  dim s as string = fldCode.Text
		  dim findLen as integer = find.Len
		  
		  dim pos as integer = InStrWithOptions( s, options )
		  if pos = 0 then
		    beep
		    return
		  end if
		  
		  dim firstPos as integer = pos
		  while pos <> 0
		    fldCode.HighlightCharacterRange pos - 1, findLen, kColorFindAll
		    pos = InStrWithOptions( pos + findLen, s, options )
		  wend
		  
		  fldCode.ScrollPosition = fldCode.LineNumAtCharPos( firstPos - 1 ) - 1
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindNext(options As SearchOptions)
		  #pragma unused options
		  
		  DoFindNext
		End Sub
	#tag EndEvent

	#tag Event
		Sub FindPrevious(options As SearchOptions)
		  #pragma unused options
		  
		  DoFindPrevious
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  //
		  // See if the window needs to be staggered
		  //
		  
		  const kMaxToConsider = 40
		  
		  dim lastIndex as integer = WindowCount - 1
		  if lastIndex > kMaxToConsider then
		    lastIndex = kMaxToConsider // After that, don't worry about it
		  end if
		  
		  dim doItAgain as boolean
		  do
		    doItAgain = false
		    
		    for i as integer = 0 to lastIndex
		      dim testWindow as Window = Window( i )
		      if testWindow is self then
		        continue for i
		      end if
		      if testWindow.Left = self.Left then
		        self.Left = self.Left + 10
		        doItAgain = true
		      end if
		      if testWindow.Top = self.Top then
		        self.Top = self.Top + 10
		        doItAgain = true
		      end if
		    next
		  loop until not doItAgain
		  
		  dim hd as new HighlightDefinition
		  if not hd.LoadFromXml( App.SyntaxDefinitionFile ) then
		    MsgBox "Could not load syntax definition"
		    quit
		  end if
		  
		  fldCode.SyntaxDefinition = hd
		  
		  SetAutocompleteWords()
		  SetCEFPrefs()
		  
		  fldCode.SetScrollbars( sbHorizontal, sbVertical )
		  
		  App.Prefs.RegisterWatcher( self )
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceAll(options As SearchOptions)
		  dim find as string = options.FindTerm
		  dim replacement as string = options.ReplaceTerm
		  
		  if find = "" then
		    return
		  end if
		  
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.ClearLineIcons
		  
		  dim replaceLen as integer = replacement.Len
		  
		  dim pos as integer = InStrWithOptions( fldCode.Text, options )
		  if pos = 0 then
		    beep
		    return
		  end if
		  
		  dim count as integer
		  
		  fldCode.IgnoreRepaint = true
		  while pos <> 0
		    count = count + 1
		    
		    fldCode.SelStart = pos - 1
		    fldCode.SelLength = replaceLen
		    fldCode.SelText = ""
		    fldCode.Insert pos - 1, replacement
		    
		    pos = InStrWithOptions( pos + replaceLen, fldCode.Text, options )
		  wend
		  fldCode.IgnoreRepaint = false
		  fldCode.Invalidate
		  
		  MsgBox "Replaced " + format( count, "#," ) + " occurrences."
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceAndFindNext(options As SearchOptions)
		  #pragma unused options
		  
		  DoReplaceOne()
		  DoFindNext()
		End Sub
	#tag EndEvent

	#tag Event
		Sub ReplaceOne(options As SearchOptions)
		  #pragma unused options
		  
		  DoReplaceOne()
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditComment() As Boolean Handles EditComment.Action
			dim lineIndexes() as integer = SelectedLineIndexes
			if lineIndexes.Ubound = -1 then
			return true
			end if
			
			fldCode.IgnoreRepaint = true
			
			//
			// See if the first line is already commented
			//
			dim doUncomment as boolean = IsLineCommented( lineIndexes( 0 ) )
			
			if doUncomment then
			
			dim rx as new RegEx
			rx.SearchPattern = "^\s*(?://|'|rem\b)\s*(.*)"
			rx.ReplacementPattern = "$1"
			
			for i as integer = lineIndexes.Ubound downto 0
			dim lineIndex as integer = lineIndexes( i )
			dim startPos as integer = fldCode.CharPosAtLineNum( lineIndex )
			dim endPos as integer = fldCode.CharPosAtLineNum( lineIndex + 1 )
			if endPos = -1 then
			endPos = fldCode.Text.Len
			end if
			
			fldCode.SelStart = startPos
			fldCode.SelLength = endPos - startPos
			dim thisLine as string = fldCode.SelText
			dim origLine as string = thisLine
			
			thisLine = rx.Replace( thisLine )
			if thisLine <> origLine then
			if thisLine = "" then
			 thisLine = EndOfLine
			end if
			fldCode.SelText = thisLine
			end if
			next
			
			else
			
			for each lineIndex as integer in lineIndexes
			dim charPos as integer = fldCode.CharPosAtLineNum( lineIndex )
			fldCode.SelStart = charPos
			fldCode.SelLength = 0
			fldCode.SelText = kCommentToken
			next
			
			end if
			
			//
			// Select the affected lines
			//
			dim startPos as integer = fldCode.CharPosAtLineNum( lineIndexes( 0 ) )
			dim endPos as integer = fldCode.CharPosAtLineNum( lineIndexes( lineIndexes.Ubound ) + 1 )
			if endPos = -1 then
			endPos = fldCode.Text.Len
			end if
			fldCode.SelStart = startPos
			fldCode.SelLength = endPos - startPos
			
			fldCode.IgnoreRepaint = false
			fldCode.Invalidate
			
			Return True
			
		End Function
	#tag EndMenuHandler

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
		Function ScriptInsertInclude() As Boolean Handles ScriptInsertInclude.Action
			InsertIncludeDirective
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

	#tag MenuHandler
		Function ViewShowInvisibles() As Boolean Handles ViewShowInvisibles.Action
			App.Prefs.ShowInvisibles = not App.Prefs.ShowInvisibles
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewShowLineNumbers() As Boolean Handles ViewShowLineNumbers.Action
			App.Prefs.ShowLineNumbers = not App.Prefs.ShowLineNumbers
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function ViewToggleToolbar() As Boolean Handles ViewToggleToolbar.Action
			App.Prefs.ShowToolbar = ViewToggleToolbar.Text = App.kViewShowToolbar
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AdjustRunInIDEButton()
		  dim shouldEnable as boolean = IsIDEAvailable
		  
		  dim btn as ToolItem = tbToolbar.Item( kTBEditorButtonIndexRunInIDE )
		  btn.Enabled = shouldEnable
		  
		  dim tag as string
		  if shouldEnable then
		    tag = kTBEditorHelpTagRunInIDE
		  else
		    tag = kTBEditorHelpTagRunInIDE + kTBEditorHelpTagIDEUnavailableSuffix
		  end if
		  if btn.HelpTag <> tag then
		    btn.HelpTag = tag
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CharPosOfNext(options As SearchOptions) As Integer
		  if options.FindTerm = "" then
		    return -1
		  end if
		  
		  dim s as string = fldCode.Text
		  
		  dim pos as integer = InStrWithOptions( fldCode.SelStart + 1 + fldCode.SelLength, s, options )
		  if pos = 0 and options.IsWrapAround then
		    pos = InStrWithOptions( s, options )
		  end if
		  
		  return pos - 1 // Zero based
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CharPosOfPrevious(options As SearchOptions) As Integer
		  dim find as string = options.FindTerm
		  
		  if find = "" then
		    return -1
		  end if
		  
		  dim findLen as integer = find.Len
		  
		  dim curPos as integer = fldCode.SelStart + 1
		  if curPos = 0 then
		    return -1
		  end if
		  
		  dim s as string = fldCode.Text
		  
		  dim pos as integer = -1 // This is zero-based
		  dim nextPos as integer = InStrWithOptions( s, options )
		  if nextPos = 0 then
		    return -1
		  end if
		  
		  //
		  // See if we have to wrap around
		  //
		  if nextPos >= curPos then
		    if options.IsWrapAround then
		      curPos = s.Len + 1
		    else
		      return -1
		    end if
		  end if
		  
		  while nextPos > 0 and nextPos < curPos
		    pos = nextPos - 1
		    nextPos = InStrWithOptions( nextPos + findLen, s, options )
		  wend
		  
		  return pos
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoFindNext()
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.ClearLineIcons
		  
		  dim pos as integer = CharPosOfNext( WndSearch.Options )
		  if pos > -1 then
		    fldCode.SelStart = pos
		    fldCode.SelLength = WndSearch.Options.FindTerm.Len
		  else
		    beep
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoFindPrevious()
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.ClearLineIcons
		  
		  dim pos as integer = CharPosOfPrevious( WndSearch.Options )
		  if pos > -1 then
		    fldCode.SelStart = pos
		    fldCode.SelLength = WndSearch.Options.FindTerm.Len
		  else
		    beep
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoReplaceOne()
		  dim options as SearchOptions = WndSearch.Options
		  
		  if options.FindTerm = "" then
		    return
		  end if
		  
		  dim find as string = options.FindTerm
		  dim replacement as string = options.ReplaceTerm
		  dim s as string = fldCode.Text
		  
		  if find = "" then
		    return
		  end if
		  
		  if StrComp( find, replacement, 0 ) = 0 then
		    beep
		    return
		  end if
		  
		  //
		  // See where we have to start
		  //
		  dim currentSelection as string = fldCode.SelText
		  dim start as integer = fldCode.SelStart + 1
		  if StrComp( currentSelection, replacement, 0 ) = 0 then
		    start = start + replacement.Len
		  end if
		  
		  dim pos as integer = InStrWithOptions( start, s, options )
		  if pos = 0 then
		    if options.IsWrapAround then
		      pos = InStrWithOptions( s, options )
		    else
		      beep
		      return
		    end if
		  end if
		  
		  if pos = 0 then
		    beep
		    return
		  end if
		  
		  fldCode.SelStart = pos - 1
		  fldCode.SelLength = find.Len
		  fldCode.SelText = ""
		  fldCode.Insert pos - 1, replacement
		  
		  fldCode.SelStart = pos - 1 + replacement.Len
		  fldCode.SelLength = 0
		  
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

	#tag Method, Flags = &h21
		Private Function InsertIncludedFiles(src As String) As String
		  // Locates the include directive and inserts the contents of the located files.
		  // Raise an exception if the file can't be located
		  
		  dim pattern as string = "^[\x20\t]*(?://|')"+ kIncludeDirective + "[\x20\t]+(.*)"
		  
		  dim rx as new RegEx
		  rx.SearchPattern = pattern
		  
		  dim match as RegExMatch = rx.Search( src )
		  while match IsA RegExMatch
		    dim path as string = match.SubExpressionString( 1 ).Trim
		    
		    dim f as FolderItem
		    
		    #pragma BreakOnExceptions false
		    try
		      if MyDocument is nil then
		        f = new FolderItem( path, FolderItem.PathTypeNative )
		      else
		        f = GetRelativeFolderItem_MTC( path, MyDocument.Parent )
		      end if
		    catch err as UnsupportedFormatException
		      f = nil
		    end try
		    #pragma BreakOnExceptions default
		    
		    if f is nil then
		      RaiseBadIncludeException( "An error occurred while accessing the file at " + path, match.SubExpressionString( 0 ) )
		    elseif f.Directory then
		      RaiseBadIncludeException( "The path " + path + " points to a folder", match.SubExpressionString( 0 ) )
		    elseif not f.Exists then
		      RaiseBadIncludeException( "The file at path " + path + " does not exist", match.SubExpressionString( 0 ) )
		    elseif not f.IsReadable then
		      RaiseBadIncludeException( "Can't read the file at path " + path, match.SubExpressionString( 0 ) )
		    end if
		    
		    dim contents as string = f.TextContents_MTC( Encodings.UTF8 )
		    
		    //
		    // Replace the Includes line
		    //
		    dim startB as integer = match.SubExpressionStartB( 0 ) + 1
		    dim prefix as string = src.LeftB( startB - 1 )
		    dim suffix as string = src.MidB( startB + match.SubExpressionString( 0 ).LenB )
		    src = prefix + contents + suffix
		    
		    match = rx.Search( src )
		  wend
		  
		  src = ReplaceLineEndings( src, &uA )
		  return src
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InsertIncludeDirective()
		  // Asks for a file and inserts it at the front of the currently selected line
		  
		  dim dlg as new OpenDialog
		  dlg.PromptText = "Select a script that will be included for compilation purposes:"
		  dlg.Filter = DocumentTypes.XojoScript
		  dlg.MultiSelect = true
		  
		  dim include as FolderItem = dlg.ShowModalWithin( self )
		  if include is nil then
		    return
		  end if
		  
		  //
		  // Get the insertion point
		  //
		  dim curPos as integer = fldCode.SelStart
		  dim curLine as integer = fldCode.LineNumAtCharPos( curPos )
		  fldCode.SelStart = fldCode.CharPosAtLineNum( curLine ) // Front of the line
		  fldCode.SelLength = 0
		  
		  dim lastFileIndex as integer = dlg.Count - 1
		  for i as integer = 0 to lastFileIndex
		    include = dlg.Item( i )
		    dim path as string = include.NativePath
		    dim insert as string = "'" + kIncludeDirective + " " + path + &uA
		    fldCode.SelText = insert
		  next
		  
		  //
		  // Make sure this line is marked dirty
		  //
		  fldCode.SelText = " "
		  fldCode.SelStart = fldCode.SelStart - 1
		  fldCode.SelLength = 1
		  fldCode.SelText = ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function InStrWithOptions(start As Integer = 1, src As String, options As SearchOptions) As Integer
		  // Like InStr but will honor options and always return char position
		  
		  if src = "" or options.FindTerm = "" then
		    return 0
		  end if
		  
		  if start < 1 then
		    start = 1
		  end if
		  
		  //
		  // See if we have to convert start into its byte-position equivalent
		  //
		  if ( options.IsCaseSensitive or options.IsWholeWord ) then
		    if start > src.Len then
		      start = src.LenB + 1
		    elseif start > 1 then
		      dim part as string = src.Left( start - 1 )
		      start = part.LenB + 1
		    end if
		  end if
		  
		  
		  if options.IsWholeWord then
		    //
		    // Use a regex
		    //
		    dim pattern as string = "\b" + StringToRegExCodes( options.FindTerm ) + "\b"
		    dim rx as new RegEx
		    rx.SearchPattern = pattern
		    rx.Options.CaseSensitive = options.IsCaseSensitive
		    
		    dim match as RegExMatch
		    if start = 1 then
		      match = rx.Search( src )
		    else
		      match = rx.Search( src, start - 1 )
		    end if
		    
		    if match is nil then
		      return 0
		    else
		      dim posB as integer = match.SubExpressionStartB( 0 )
		      return src.LeftB( posB ).Len + 1
		    end if
		    
		  else
		    
		    if options.IsCaseSensitive then
		      
		      dim posB as integer = src.InStrB( start, options.FindTerm )
		      if posB < 2 then
		        return posB
		      else
		        return src.LeftB( posB - 1 ).Len + 1
		      end if
		      
		    else
		      
		      return src.InStr( start, options.FindTerm )
		      
		    end if
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsLineCommented(lineIndex As Integer) As Boolean
		  static rx as RegEx
		  if rx is nil then
		    rx = new RegEx
		    rx.SearchPattern = "^\s*(?://|'|rem\b)"
		  end if
		  
		  dim line as string = fldCode.GetLine( lineIndex )
		  return rx.Search( line ) isa RegExMatch
		End Function
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
		Private Sub PreferencesHaveChanged(prefs As Preferences)
		  dim xsePrefs as XsEditPreferences = XsEditPreferences( prefs )
		  
		  tbToolbar.Visible = xsePrefs.ShowToolbar
		  
		  fldCode.IgnoreRepaint = true
		  
		  fldCode.TextFont = xsePrefs.CodeFont
		  fldCode.TextSize = xsePrefs.CodeFontSize
		  fldCode.AutocompleteAppliesStandardCase = xsePrefs.AutocompleteAppliesStandardCase
		  fldCode.AutoCloseBrackets = xsePrefs.AutoCloseBrackets
		  fldCode.DisplayInvisibleCharacters = xsePrefs.ShowInvisibles
		  fldCode.DisplayLineNumbers = xsePrefs.ShowLineNumbers
		  
		  dim hd as HighlightDefinition = fldCode.SyntaxDefinition
		  dim interestingPrefs as Dictionary = xsePrefs.InterestingContextPrefsDictionary
		  
		  for each context as HighlightContext in hd.Contexts
		    if interestingPrefs.HasKey( context.Name ) then
		      dim contextPref as ContextPreferences = interestingPrefs.Value( context.Name )
		      contextPref.CopyTo context
		    end if
		  next
		  
		  //
		  // Force CustomEditField to update the colors
		  //
		  
		  fldCode.SyntaxDefinition = nil
		  fldCode.SyntaxDefinition = hd
		  fldCode.IgnoreRepaint = false
		  fldCode.Redraw( true )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RaiseBadIncludeException(msg As String, faultyLine As String)
		  dim charStart as integer = fldCode.Text.InStr( faultyLine ) - 1
		  dim lineNum as integer = fldCode.LineNumAtCharPos( charStart )
		  fldCode.HighlightCharacterRange( charStart, faultyLine.Len, kColorError )
		  fldCode.LineIcon( lineNum ) = errordata
		  fldCode.HelpTag = msg
		  
		  LastCompilerErrorCode = kErrorIncludeError
		  LastCompilerErrorLine = lineNum
		  
		  #pragma BreakOnExceptions false
		  dim err as new XojoScriptException
		  err.Message = msg
		  raise err
		  #pragma BreakOnExceptions default
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Save() As Boolean
		  if MyDocument is nil then
		    return SaveAs()
		  end if
		  
		  MyDocument.TextContents_MTC = ReplaceLineEndings( fldCode.Text, EndOfLine )
		  ContentsChanged = false
		  fldCode.ClearDirtyLines
		  
		  CodeBeforeChanges = fldCode.Text
		  SetTitle()
		  
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
		  
		  dim src as string = fldCode.Text
		  
		  try
		    src = InsertIncludedFiles( src )
		  catch err as XojoScriptException
		    return
		  end try
		  
		  fldCode.ClearLineIcons
		  fldCode.ClearHighlightedCharacterRanges
		  fldCode.HelpTag = ""
		  
		  //
		  // Handle the compiling first
		  //
		  
		  XS.Reset
		  XS.Source = src
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
		    
		    IDESocket.Write XS.Source
		    while IDESocket.BytesLeftToSend <> 0
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
		    
		    dim dlg as new MessageDialog
		    dlg.CancelButton.Visible = false
		    dlg.Message = "Could not connect to the IDE. Restarting it might help."
		    dlg.Explanation = ex.Message + ": " + Str(ex.ErrorNumber)
		    call dlg.ShowModal
		    
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
		Private Function SelectedLineIndexes() As Integer()
		  // Returns an array of the line indexes that cover the current selection
		  
		  dim selText as string = fldCode.SelText
		  
		  dim startLine as integer = fldCode.LineNumAtCharPos( fldCode.SelStart )
		  dim endLine as integer = fldCode.LineNumAtCharPos( fldCode.SelStart + fldCode.SelLength )
		  
		  dim lastChar as string = selText.Right( 1 )
		  if startLine <> endLine and ( lastChar = &uA or lastChar = &u0D ) then
		    endLine = endLine - 1
		  end if
		  
		  dim r() as integer
		  for i as integer = startLine to endLine
		    r.Append i
		  next
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectLineRange(firstLineIndex As Integer, lastLineIndex As Integer)
		  dim startPos as integer = fldCode.CharPosAtLineNum( firstLineIndex )
		  dim endPos as integer = fldCode.CharPosAtLineNum( lastLineIndex + 1 )
		  if endPos = -1 then
		    endPos = fldCode.Text.Len
		  end if
		  
		  fldCode.SelStart = startPos
		  fldCode.SelLength = endPos - startPos
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetAutocompleteWords()
		  if AutocompleterKeywords is nil then
		    
		    AutocompleterKeywords = new PaTrie
		    
		    dim contexts() as HighlightContext = fldCode.SyntaxDefinition.Contexts
		    for each context as HighlightContext in contexts
		      dim keywords() as string
		      context.ListKeywords( keywords )
		      for each keyword as string in keywords
		        keyword = keyword.Trim
		        
		        //
		        // The automcomplete engine only consideres word characters so
		        // strip the "#" for now
		        //
		        if keyword.Left( 1 ) = "#" then
		          keyword = keyword.Mid( 2 )
		        end if
		        
		        if keyword <> "" then
		          call AutocompleterKeywords.AddKey( keyword, nil )
		        end if
		      next
		    next
		    
		    //
		    // Add all methods and properties from IDEEmulator
		    // except those with "exclude" attribute
		    //
		    
		    dim ti as Introspection.TypeInfo = GetTypeInfo( IDEEmulator )
		    
		    //
		    // Properties
		    //
		    dim props() as Introspection.PropertyInfo = ti.GetProperties
		    for each prop as Introspection.PropertyInfo in props
		      dim attrs() as Introspection.AttributeInfo = prop.GetAttributes
		      for each attr as Introspection.AttributeInfo in attrs
		        if attr.Name = "exclude" then
		          continue for prop
		        end if
		      next
		      call AutocompleterKeywords.AddKey( prop.Name, nil )
		    next
		    
		    //
		    // Methods
		    //
		    dim methods() as Introspection.MethodInfo = ti.GetMethods
		    for each method as Introspection.MethodInfo in methods
		      dim attrs() as Introspection.AttributeInfo = method.GetAttributes
		      for each attr as Introspection.AttributeInfo in attrs
		        if attr.Name = "exclude" then
		          continue for method
		        end if
		      next
		      call AutocompleterKeywords.AddKey( method.Name, nil )
		    next
		    
		    //
		    // Additional
		    //
		    dim addl as string = kAdditionalKeywords
		    addl = ReplaceLineEndings( addl, &uA ).Trim
		    for each keyword as string in addl.Split( &uA )
		      keyword = keyword.Trim
		      if keyword <> "" then
		        call AutocompleterKeywords.AddKey( keyword, nil )
		      end if
		    next
		  end if
		  
		  //
		  // Get all the keywords it can from the script up to that point
		  //
		  
		  AutocompleterScript = new PaTrie
		  ResumeSetAutocompleteAtLine = 0
		  tmrSetAutocompleteScript.Mode = Timer.ModeSingle
		  tmrSetAutocompleteScript.Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCEFPrefs()
		  //
		  // Set the static prefs here
		  //
		  
		  fldCode.IgnoreRepaint = true
		  
		  fldCode.AutoIndentNewLines = true
		  fldCode.IndentVisually = true
		  
		  fldCode.Border = false
		  fldCode.UseFocusRing  = false
		  
		  fldCode.DisplayDirtyLines = true
		  fldCode.EnableLineFoldings = true
		  
		  fldCode.HighlightMatchingBrackets = true
		  fldCode.HighlightMatchingBracketsMode = 2
		  fldCode.EnableAutocomplete = true
		  
		  fldCode.ClearHighlightedRangesOnTextChange = true
		  
		  fldCode.IgnoreRepaint = false
		  
		  //
		  // Load the dynamic prefs
		  // (will also call Invalidate)
		  //
		  
		  PreferencesHaveChanged( App.Prefs )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetContentsChanged()
		  ContentsChanged = StrComp( CodeBeforeChanges, fldCode.Text, 0 ) <> 0
		  if not ContentsChanged then
		    fldCode.ClearDirtyLines
		  end if
		  
		  tmrSetContentsChanged.Mode = Timer.ModeOff
		  
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

	#tag Method, Flags = &h21
		Private Function StringToRegExCodes(s As String) As String
		  // Converts a string to it's equivalent in regex codes
		  
		  dim chars() as string = s.Split( "" )
		  for i as integer = 0 to chars.Ubound
		    chars( i ) = hex( chars( i ).Asc )
		  next
		  
		  dim r as string = join( chars, "}\x{" )
		  r = "\x{" + r + "}"
		  return r
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AutocompleterKeywords As PaTrie
	#tag EndProperty

	#tag Property, Flags = &h21
		Private AutocompleterScript As PaTrie
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CodeBeforeChanges As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  dim isAvailable as boolean = true // Assume this
			  dim ipcPath as string = IDECommunicator.FindIPCPath
			  if ipcPath = "" then
			    isAvailable = false
			  else
			    dim f as new FolderItem( ipcPath, FolderItem.PathTypeNative )
			    isAvailable = f isa FolderItem and f.Exists
			  end if
			  
			  return isAvailable
			End Get
		#tag EndGetter
		Private IsIDEAvailable As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private LastCompilerErrorCode As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LastCompilerErrorLine As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LineNumberAtLastSetAutocomplete As Integer
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
		Private ResumeSetAutocompleteAtLine As Integer = 0
	#tag EndProperty


	#tag Constant, Name = kAdditionalKeywords, Type = String, Dynamic = False, Default = \"Abs\nAcos\nAppend\nAsc\nAscB\nAsin\nAtan\nAtan2\nAuto\nBin\nCdbl\nCeil\nChr\nChrB\nCMY\nCos\nCountFields\nCStr\nEndOfLine\nExp\nFloor\nFormat\nHex\nHSV\nIndexOf\nInput\nInStr\nInStrB\nLeft\nLeftB\nLen\nLenB\nLog\nLowercase\nLTrim\nMax\nMicroseconds\nMid\nMidB\nMin\nNthField\nOct\nPow\nPrint\nRemove\nReplace\nReplaceAll\nReplaceAllB\nReplaceB\nRGB\nRight\nRightB\nRnd\nRound\nRTrim\nSin\nSqrt\nStr\nStrComp\nTan\nTicks\nTitlecase\nToText\nTrim\nUbound\nUppercase\nVal\n\nVariant\nBooleanValue\nInt32Value\nSingleValue\nCFStringRefValue\nInt64Value\nStringValue\nTextValue\nCStringValue\nIntegerValue\nUInt32Value\nColorValue\nOSTypeValue\nUInt64Value\nCurrencyValue\nObjectValue\nWStringValue\nDateValue\nPStringValue\nWindowPtrValue\nDoubleValue\nPtrValue\n\nArrayElementType\nEquals\nHash\nIsArray\nIsNull\nIsNumeric\n\nType\nTypeArray\nTypeBoolean\nTypeCFStringRef\nTypeColor\nTypeCString\nTypeCurrency\nTypeDate\nTypeDouble\nTypeInteger\nTypeLong\nTypeNil\nTypeObject\nTypeOSType\nTypePString\nTypePtr\nTypeSingle\nTypeString\nTypeStructure\nTypeText\nTypeWindowPtr\nTypeWString", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kColorError, Type = Color, Dynamic = False, Default = \"&cFF00007F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorFindAll, Type = Color, Dynamic = False, Default = \"&c00FF00", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kColorWarning, Type = Color, Dynamic = False, Default = \"&cDCE83D7F", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCommentToken, Type = String, Dynamic = False, Default = \"\'", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kErrorIncludeError, Type = Double, Dynamic = False, Default = \"-99", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kIncludeDirective, Type = String, Dynamic = False, Default = \"#include", Scope = Private
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
		  
		  tmrSetContentsChanged.Mode = Timer.ModeSingle
		  tmrSetContentsChanged.Reset
		End Sub
	#tag EndEvent
	#tag Event
		Function ShouldTriggerAutocomplete(Key as string, hasAutocompleteOptions as boolean) As boolean
		  return Key.Asc = 9 and hasAutocompleteOptions
		End Function
	#tag EndEvent
	#tag Event
		Function AutocompleteOptionsForPrefix(prefix as string) As AutocompleteOptions
		  //
		  // If there is a dot in the prefix, strip the text before it
		  //
		  if prefix <> "" then
		    dim prefixParts() as string = prefix.Split( "." )
		    prefix = prefixParts( prefixParts.Ubound )
		  end if
		  
		  dim options as new AutocompleteOptions
		  options.Prefix = prefix
		  dim commonPrefixKeywords as string
		  dim keywords() as string = AutocompleterKeywords.WordsForPrefix( prefix, commonPrefixKeywords )
		  dim commonPrefixScript as string
		  dim scriptwords() as string = AutocompleterScript.WordsForPrefix( prefix, commonPrefixScript )
		  
		  //
		  // Combine them
		  //
		  dim commonPraTrie as new PaTrie
		  for each word as string in keywords
		    call commonPraTrie.AddKey( word )
		  next
		  for each word as string in scriptwords
		    call commonPraTrie.AddKey( word )
		  next
		  
		  dim commonPrefix as string
		  dim words() as string = commonPraTrie.WordsForPrefix( prefix, commonPrefix )
		  
		  options.Options = words
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
		  if not App.Prefs.UseActiveLineHighlight then
		    return false
		  end if
		  
		  dim startLine as integer = me.LineNumAtCharPos( me.SelStart )
		  dim endLine as integer = me.LineNumAtCharPos( me.SelStart + me.SelLength )
		  
		  if lineIndex >= startLine and lineIndex <= endLine then
		    lineBackgroundColor = App.Prefs.ActiveLineHighlightColor
		    return true
		  end if
		End Function
	#tag EndEvent
	#tag Event
		Sub SelChanged(line as integer, column as integer, length as integer)
		  #pragma unused column
		  #pragma unused length
		  
		  //
		  // This "line" is one-based
		  //
		  line = line - 1
		  if line <> LineNumberAtLastSetAutocomplete then
		    SetAutocompleteWords
		  end if
		  
		End Sub
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
		  case kTBEditorLabelCompile
		    ScriptCompile
		    
		  case kTBEditorLabelTestRun
		    ScriptTestRun
		    
		  case kTBEditorLabelRunInIDE
		    ScriptRunInIDE
		  end select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  dim btn as ToolButton
		  
		  btn = new ToolButton
		  btn.Caption = kTBEditorLabelCompile
		  btn.Name = "btnCompile"
		  #if TargetMacOS
		    btn.Icon = systemrun3
		  #else
		    btn.Icon = systemrun3small
		  #endif
		  me.Append btn
		  
		  //
		  // Add a space
		  //
		  btn = new ToolButton
		  #if TargetMacOS
		    btn.Style = ToolButton.ToolStyleSpace
		  #else
		    btn.Style = ToolButton.ToolStyleSeparator
		  #endif
		  me.Append btn
		  
		  btn = new ToolButton
		  btn.Caption = kTBEditorLabelRunInIDE
		  btn.Name = "btnRunInIDE"
		  #if TargetMacOS
		    btn.Icon = arrowright3
		  #else
		    btn.Icon = arrowright3small
		  #endif
		  me.Append btn
		  
		  btn = new ToolButton
		  btn.Caption = kTBEditorLabelTestRun
		  btn.Name = "btnTestRun"
		  #if TargetMacOS
		    btn.Icon = arrowrightdouble3
		  #else
		    btn.Icon = arrowrightdouble3small
		  #endif
		  me.Append btn
		  
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
#tag Events tmrSetAutocompleteScript
	#tag Event
		Sub Action()
		  //
		  // Set up the regexes
		  //
		  static rxDimFinder as RegEx
		  if rxDimFinder is nil then
		    rxDimFinder = new RegEx
		    rxDimFinder.SearchPattern = "(?mi-Us)^\s*(?:dim|private|public|protected)\s+(?!sub\s+|function\s+|class\s+|module\s+|interface\s+)([^\s].*)"
		  end if
		  
		  static rxAssignmentRemover as RegEx
		  if rxAssignmentRemover is nil then
		    rxAssignmentRemover = new RegEx
		    rxAssignmentRemover.SearchPattern = "(?mi-Us)=\s*(?:""(?:""""|[^""])*""|[^\s,]+)?"
		    rxAssignmentRemover.ReplacementPattern = ""
		    rxAssignmentRemover.Options.ReplaceAllMatches = true
		  end if
		  
		  static rxVariableFinder as RegEx
		  if rxVariableFinder is nil then
		    rxVariableFinder = new RegEx
		    rxVariableFinder.SearchPattern = "(?Umi-s)((?:[^,]+,?)+)\s+as\s+(new\s+\w+|\w+)(?:,|\s|$)"
		  end if
		  
		  static rxConstantFinder as RegEx
		  if rxConstantFinder is nil then
		    rxConstantFinder = new RegEx
		    rxConstantFinder.SearchPattern = "^\s*const\s+([^\s]+)"
		  end if
		  
		  static rxSubFinder as RegEx
		  if rxSubFinder is nil then
		    rxSubFinder = new RegEx
		    rxSubFinder.SearchPattern = "^\s*(?:private\s+|public\s+|protected\s+)?(?:sub\s+|function\s+|module\s+|class\s+|interface\s+)([^\s()]+)"
		  end if
		  
		  dim startTicks as integer = Ticks()
		  const kThresholdTicks = 2
		  dim targetTicks as integer = startTicks + kThresholdTicks
		  
		  dim curLineIndex as integer = fldCode.LineNumAtCharPos( fldCode.SelStart )
		  dim lastLineIndex as integer =  curLineIndex - 1
		  for lineIndex as integer = ResumeSetAutocompleteAtLine to lastLineIndex
		    if Ticks > targetTicks then
		      ResumeSetAutocompleteAtLine = lineIndex
		      me.Mode = Timer.ModeSingle
		      return
		    end if
		    
		    dim thisLine as string = fldCode.GetLine( lineIndex )
		    dim match as RegExMatch
		    
		    match = rxDimFinder.Search( thisLine )
		    if match IsA RegExMatch then
		      dim part as string = match.SubExpressionString( 1 )
		      part = rxAssignmentRemover.Replace( part )
		      dim varMatch as RegExMatch = rxVariableFinder.Search( part )
		      while varMatch IsA RegExMatch
		        dim vars() as string = varMatch.SubExpressionString( 1 ).Split( "," )
		        for each var as string in vars
		          var = var.NthField( "(", 1 )
		          call AutocompleterScript.AddKey( var.Trim )
		        next
		        
		        varMatch = rxVariableFinder.Search
		      wend
		      
		      continue for lineIndex
		    end if
		    
		    match = rxConstantFinder.Search( thisLine )
		    if match IsA RegExMatch then
		      call AutocompleterScript.AddKey( match.SubExpressionString( 1 ) )
		      continue for lineIndex
		    end if
		    
		    match = rxSubFinder.Search( thisLine )
		    if match IsA RegExMatch then
		      call AutocompleterScript.AddKey( match.SubExpressionString( 1 ) )
		      continue for lineIndex
		    end if
		    
		  next
		  
		  LineNumberAtLastSetAutocomplete = curLineIndex
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrSetContentsChanged
	#tag Event
		Sub Action()
		  SetContentsChanged()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrCheckForXojoIDE
	#tag Event
		Sub Action()
		  AdjustRunInIDEButton
		End Sub
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
