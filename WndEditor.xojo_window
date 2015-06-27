#tag Window
Begin Window WndEditor
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
      EnableAutocomplete=   False
      Enabled         =   True
      EnableLineFoldings=   False
      enableLineFoldingSetting=   False
      EraseBackground =   True
      GutterBackgroundColor=   &cEEEEEE00
      GutterSeparationLineColor=   &c88888800
      GutterWidth     =   0
      Height          =   332
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
      Scope           =   0
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
      Top             =   48
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   580
   End
   Begin ScrollBar sbVertical
      AcceptFocus     =   True
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   332
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
      Top             =   48
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
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   385
      Value           =   0
      Visible         =   True
      Width           =   573
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
			Save()
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function FileSaveAs() As Boolean Handles FileSaveAs.Action
			SaveAs()
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		Sub OpenDocument(f As FolderItem)
		  if f is nil or not f.Exists then
		    MsgBox "Could not open the document."
		    self.Close
		  end if
		  
		  MyDocumentAlias = f
		  fldCode.Text = f.TextContents_MTC( Encodings.UTF8 )
		  
		  fldCode.ResetUndo
		  fldCode.ResetUndoDirtyFlag
		  
		  self.ContentsChanged = false
		  SetTitle()
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Save()
		  if MyDocument is nil then
		    SaveAs()
		    return
		  end if
		  
		  MyDocument.TextContents_MTC = fldCode.Text
		  ContentsChanged = false
		  fldCode.ClearDirtyLines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveAs()
		  dim dlg as new SaveAsDialog
		  dlg.PromptText = "Save the script:"
		  dlg.Filter = DocumentTypes.XojoScript
		  dlg.SuggestedFileName = "Script.xojo_script"
		  
		  dim f as FolderItem = dlg.ShowModalWithin( self )
		  if f is nil then
		    return
		  end if
		  
		  MyDocumentAlias = f
		  Save()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptCompile()
		  XS.Source = fldCode.Text
		  
		  fldCode.ClearLineIcons
		  fldCode.ClearHighlightedCharacterRanges
		  
		  //
		  // Handle the compiling first
		  //
		  
		  if not XS.Precompile( XojoScript.OptimizationLevels.High ) then
		    #pragma warning "Finish this!"
		    
		    return
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptRun()
		  ScriptCompile
		  
		  XS.Run
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ScriptRunInIDE()
		  try
		    dim endTime as Integer = Ticks + 7200
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
		    
		  catch ex as RuntimeException
		    if IDESocket.IsConnected then
		      IDESocket.Close
		    end if
		    
		    MsgBox ex.Message + ": " + Str(ex.ErrorNumber)
		  end try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetAutocompleteWords()
		  Autocompleter = new PaTrie
		  call Autocompleter.AddKey( "select", "some data" )
		  
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


	#tag Constant, Name = kToolbarCompile, Type = String, Dynamic = False, Default = \"Compile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kToolbarRun, Type = String, Dynamic = False, Default = \"Run", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kToolbarRunInIDE, Type = String, Dynamic = False, Default = \"Run in IDE", Scope = Public
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
		  
		  self.ContentsChanged = true
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
		    
		  case kToolbarRun
		    ScriptRun
		    
		  case kToolbarRunInIDE
		    ScriptRunInIDE
		  end select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events XS
	#tag Event
		Sub RuntimeError(error As RuntimeException)
		  break
		End Sub
	#tag EndEvent
	#tag Event
		Sub CompilerWarning(location As XojoScriptLocation, warning As XojoScript.Warnings, warningInfo As Dictionary)
		  fldCode.HighlightCharacterRange( location.Character, location.EndColumn - location.Column, &cFF000000 )
		End Sub
	#tag EndEvent
	#tag Event
		Function CompilerError(location As XojoScriptLocation, error As XojoScript.Errors, errorInfo As Dictionary) As Boolean
		  fldCode.HighlightCharacterRange( location.Character, location.EndColumn - location.Column, &cFF00007F )
		End Function
	#tag EndEvent
	#tag Event
		Sub Print(msg As String)
		  MsgBox msg
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
