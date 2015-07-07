#tag Window
Begin XsEditWindowBase WndPreferences
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   1
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   220
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Preferences"
   Visible         =   True
   Width           =   600
   Begin DialogButtonContainer DialogButtonContainer1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AlternateCaption=   "Defaults"
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      CancelCaption   =   "Cancel"
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   54
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      OkCaption       =   "Save"
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   166
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   600
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      Text            =   "Code Font:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ComboBox cboCodeFont
      AutoComplete    =   True
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   125
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   238
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   409
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      Text            =   "Size:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   21
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   46
   End
   Begin TextField fldCodeSize
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      CueText         =   ""
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   467
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   "999"
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   20
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   80
   End
   Begin CheckBox cbAutocompleteAppliesStandardCase
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Autocomplete Applies Standard Case"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   270
   End
   Begin CheckBox cbAutoCloseBrackets
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Auto-close Brackets"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   270
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      Text            =   "Contexts:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   111
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox cbUseActiveLineHighlight
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Highlight Active Line"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   310
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   54
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   155
   End
   Begin ColorPicker_MTC cpActiveLineHighlightColor
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   32
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   492
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PromptText      =   "Select a color:"
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   52
      Transparent     =   True
      UseFocusRing    =   True
      Value           =   &c00000000
      Visible         =   True
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  //
		  // Get the fonts
		  //
		  
		  dim fonts() as string
		  
		  dim lastFontIndex as integer = FontCount - 1
		  for i as integer = 0 to lastFontIndex
		    fonts.Append Font( i )
		  next
		  
		  fonts.Sort
		  
		  //
		  // Prefix the system fonts
		  //
		  fonts.Insert 0, "System"
		  fonts.Insert 1, "SmallSystem"
		  
		  AllFonts = fonts
		  
		  //
		  // Set the CodeFont field
		  //
		  cboCodeFont.AddRows AllFonts
		  cboCodeFont.Text = App.Prefs.CodeFont
		  
		  //
		  // Set the CodeFontSize field
		  //
		  fldCodeSize.Text = str( App.Prefs.CodeFontSize )
		  
		  //
		  // Set the AutocompleteAppliesStandardCase checkbox
		  //
		  cbAutocompleteAppliesStandardCase.Value = App.Prefs.AutocompleteAppliesStandardCase
		  
		  //
		  // Set the AutoCloseBrackets checkbox
		  //
		  cbAutoCloseBrackets.Value = App.Prefs.AutoCloseBrackets
		  
		  //
		  // Set the UseActiveLineHighlight checkbox
		  //
		  cbUseActiveLineHighlight.Value = App.Prefs.UseActiveLineHighlight
		  cpActiveLineHighlightColor.Value = App.Prefs.ActiveLineHighlightColor
		  cpActiveLineHighlightColor.Visible = cbUseActiveLineHighlight.Value
		  
		  //
		  // Contexts
		  //
		  'ccStringsContext.SetFromPrefs( App.Prefs.ContextString, new ContextPreferences( App.SyntaxDefinitionFile, "String" ) )
		  'ccKeywordsContext.SetFromPrefs( App.Prefs.ContextKeyword, new ContextPreferences( App.SyntaxDefinitionFile, "Keywords" ) )
		  'ccCommentsContext.SetFromPrefs( App.Prefs.ContextComment, new ContextPreferences( App.SyntaxDefinitionFile, "Comment" ) )
		  'ccBasicTypesContext.SetFromPrefs( App.Prefs.ContextBasicType, new ContextPreferences( App.SyntaxDefinitionFile, "BasicTypes" ) )
		  
		  dim contextPrefs() as ContextPreferences = App.Prefs.InterestingContextPrefs
		  
		  const kUseLeft = 63
		  const kStartTop = 143
		  const kTopOffset = 44
		  
		  for i as integer = 0 to contextPrefs.Ubound
		    dim contextPref as ContextPreferences = contextPrefs( i )
		    
		    dim cc as new TextContextControl
		    cc.ContextName = contextPref.Name
		    cc.SetFromPrefs contextPref, new ContextPreferences( App.SyntaxDefinitionFile, contextPref.Name )
		    
		    cc.EmbedWithin self, kUseLeft, kStartTop + ( kTopOffset * i )
		    ContextControls.Append cc
		    
		    self.Height = self.Height + kTopOffset
		  next
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub RestoreDefaults()
		  dim prefs as XsEditPreferences = App.Prefs
		  
		  cbAutoCloseBrackets.Value = prefs.kDefaultAutoCloseBrackets
		  cbAutocompleteAppliesStandardCase.Value = prefs.kDefaultAutocompleteAppliesStandardCase
		  cbUseActiveLineHighlight.Value = prefs.kDefaultUseActiveLineHighlight
		  cpActiveLineHighlightColor.Value = prefs.kDefaultActiveHighlightColor
		  cpActiveLineHighlightColor.Visible = cbUseActiveLineHighlight.Value
		  
		  cboCodeFont.Text = prefs.kDefaultCodeFont
		  fldCodeSize.Text = str( prefs.kDefaultCodeFontSize )
		  
		  for each cc as TextContextControl in ContextControls
		    cc.RestoreDefaults
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ValidateAndSave() As Boolean
		  // Will attempt to validate the preferences. If it can't, will beep and somehow indicate the
		  // faulty pref
		  
		  //
		  // CodeFont
		  //
		  dim chosenFont as string = cboCodeFont.Text
		  dim index as integer = AllFonts.IndexOf( chosenFont )
		  if index = -1 then
		    beep
		    cboCodeFont.SelStart = 0
		    cboCodeFont.SelLength = chosenFont.Len
		    return false
		  else
		    //
		    // Set it to the right case
		    //
		    chosenFont = AllFonts( index )
		  end if
		  
		  //
		  // If we get here, we can save
		  //
		  App.Prefs.CodeFont = chosenFont
		  App.Prefs.CodeFontSize = fldCodeSize.Text.Val
		  App.Prefs.AutocompleteAppliesStandardCase = cbAutocompleteAppliesStandardCase.Value
		  App.Prefs.AutoCloseBrackets = cbAutoCloseBrackets.Value
		  App.Prefs.UseActiveLineHighlight = cbUseActiveLineHighlight.Value
		  App.Prefs.ActiveLineHighlightColor = cpActiveLineHighlightColor.Value
		  
		  for each cc as TextContextControl in ContextControls
		    App.Prefs.ContextPrefValue( cc.ContextName ) = cc.ToContextPreferences
		  next
		  
		  App.Prefs.Save
		  
		  return true
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AllFonts() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ContextControls() As TextContextControl
	#tag EndProperty


#tag EndWindowCode

#tag Events DialogButtonContainer1
	#tag Event
		Sub OkAction()
		  if ValidateAndSave then
		    self.Close
		  end if
		End Sub
	#tag EndEvent
	#tag Event
		Sub CancelAction()
		  self.Close
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub AlternateAction()
		  RestoreDefaults
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbUseActiveLineHighlight
	#tag Event
		Sub Action()
		  cpActiveLineHighlightColor.Visible = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cpActiveLineHighlightColor
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma unused x
		  #pragma unused y
		  
		  base.Append new MenuItem( "Restore Default" )
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  select case hitItem.Text
		  case "Restore Default"
		    me.Value = App.Prefs.kDefaultActiveHighlightColor
		    return true
		    
		  end select
		  
		  return false
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
