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
   Height          =   400
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
      AlternateCaption=   ""
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
      Left            =   164
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      OkCaption       =   "Save"
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   326
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   416
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   False
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
      AutoComplete    =   False
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
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   19
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   238
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events DialogButtonContainer1
	#tag Event
		Sub OkAction()
		  #pragma warning "Finish this!"
		End Sub
	#tag EndEvent
	#tag Event
		Sub CancelAction()
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cboCodeFont
	#tag Event
		Sub Open()
		  dim lastFontIndex as integer = FontCount - 1
		  for i as integer = 0 to lastFontIndex
		    me.AddRow Font( i )
		  next
		End Sub
	#tag EndEvent
#tag EndEvents
