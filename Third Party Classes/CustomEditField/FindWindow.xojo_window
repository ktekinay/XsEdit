#tag Window
Begin Window FindWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   154
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   False
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   False
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   False
   Title           =   "Find"
   Visible         =   True
   Width           =   527
   Begin Label StaticText1
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
      Left            =   18
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Find:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin Label StaticText2
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
      Left            =   18
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Replace With:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   46
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin ComboBox txtToFind
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
      Left            =   123
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   15
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   384
   End
   Begin ComboBox txtToReplace
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
      Left            =   123
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   47
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   384
   End
   Begin CheckBox ignoreCase
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Ignore Case"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   123
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   100
   End
   Begin CheckBox wrapAround
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Wrap Around"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   235
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      State           =   1
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Transparent     =   True
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   110
   End
   Begin PushButton btnReplaceAll
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Replace All"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Replace all occurrences of the find text"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   114
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   93
   End
   Begin PushButton btnReplace
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Replace"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Replace selected text with the replacement text"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   114
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnReplaceAndFind
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Replace && Find"
      Default         =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   "Replace selected text and find next occurrence of the find text"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   297
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   114
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   118
   End
   Begin PushButton btnNext
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "0"
      Cancel          =   False
      Caption         =   "Next"
      Default         =   True
      Enabled         =   True
      Height          =   20
      HelpTag         =   "find next occurrence of the find text"
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   427
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   114
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label results
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
      Left            =   357
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   2
      TextColor       =   &c88888800
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   79
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   150
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  lastLeft = me.Left
		  lastTop = me.top
		  CurrentFindWindow = nil
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = Chr(3) or Key = Chr(13) then
		    btnNext.Push
		    return true
		  end if
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  if findTerms = nil then
		    findTerms = new Dictionary
		  end if
		  
		  if replaceTerms = nil then
		    replaceTerms = new Dictionary
		  end if
		  
		  CurrentFindWindow = self
		  txtToFind.Text = lastSearchTerm
		  txtToReplace.text = lastReplaceTerm
		  wrapAround.Value = lastWrapAroundValue
		  ignoreCase.Value = lastIgnoreCaseValue
		  if lastLeft >= 0 then me.Left = lastLeft
		  if lastTop >=0 then me.Top = lastTop
		  
		  for i as Integer = 0 to findTerms.Count - 1
		    txtToFind.AddRow findTerms.Key(i)
		  next
		  
		  for i as Integer = 0 to replaceTerms.Count - 1
		    txtToReplace.AddRow replaceTerms.Key(i)
		  next
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileClose() As Boolean Handles FileClose.Action
			self.Close
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Shared Sub addFindTerm()
		  if findTerms = nil then
		    findTerms = new Dictionary
		  end if
		  
		  if findTerms.HasKey(lastSearchTerm) then Return
		  
		  findTerms.Value(lastSearchTerm) = nil
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.txtToFind.AddRow lastSearchTerm
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub addReplaceTerm()
		  if replaceTerms = nil then
		    replaceTerms = new Dictionary
		  end if
		  
		  if replaceTerms.HasKey(lastReplaceTerm) then Return
		  
		  replaceTerms.Value(lastReplaceTerm) = nil
		  
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.txtToReplace.AddRow lastReplaceTerm
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function findNext() As boolean
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = ""
		    lastIgnoreCaseValue = CurrentFindWindow.ignoreCase.Value
		    lastWrapAroundValue = CurrentFindWindow.wrapAround.Value
		  end if
		  
		  if CurrentFindWindow <> nil and CurrentFindWindow.txtToFind.Text = "" then
		    beep
		    Return false
		  end if
		  
		  Return findNext(lastIgnoreCaseValue, lastWrapAroundValue, true, -1)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Function findNext(ignoreCase as boolean, wrapAround as boolean, redraw as boolean, startPos as integer) As boolean
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return false
		  
		  addFindTerm
		  if Target.Find(lastSearchTerm, ignoreCase, wrapAround, redraw, startPos) > -1 then Return true
		  
		  beep
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = "Not Found"
		  end if
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub replace()
		  if CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = ""
		    lastIgnoreCaseValue = CurrentFindWindow.ignoreCase.Value
		    lastWrapAroundValue = CurrentFindWindow.wrapAround.Value
		  end if
		  
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return
		  
		  addReplaceTerm
		  Target.SelText = lastReplaceTerm
		  Target.Redraw
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Shared Sub replaceAll()
		  dim Target as CustomEditField = CustomEditField.CurrentFocusedField
		  if Target = nil then Return
		  
		  dim count as Integer
		  dim eventID as Integer = Ticks // -> grouped undo
		  
		  addFindTerm
		  addReplaceTerm
		  Target.ignoreRepaint = true
		  dim startPos as Integer = 0 //start at begining of file
		  while findNext(lastIgnoreCaseValue, false, false, startPos) //WITHOUT wrapping, since this could lead to an infinite loop if replacement contains find term.
		    Target.private_replace(Target.SelStart, Target.SelLength, lastReplaceTerm, true, eventID)
		    count = count + 1
		    startPos = Target.CaretPos //update startPos
		  wend
		  Target.ignoreRepaint = false
		  Target.Redraw
		  
		  if Count > 1 and CurrentFindWindow <> nil then
		    CurrentFindWindow.results.Text = str(Count) + " Replaced"
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub replaceAndFind()
		  replace
		  call findNext
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected Shared CurrentFindWindow As FindWindow
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared findTerms As dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastIgnoreCaseValue As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastLeft As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastReplaceTerm As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastSearchTerm As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastTop As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared lastWrapAroundValue As Boolean = true
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Shared replaceTerms As dictionary
	#tag EndProperty


#tag EndWindowCode

#tag Events txtToFind
	#tag Event
		Sub TextChanged()
		  lastSearchTerm = me.Text
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = Chr(3) or Key = Chr(13) then
		    btnNext.Push
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events txtToReplace
	#tag Event
		Sub TextChanged()
		  lastReplaceTerm = me.text
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if Key = Chr(3) or Key = Chr(13) then
		    btnNext.Push
		    return true
		  end if
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ignoreCase
	#tag Event
		Sub Action()
		  lastIgnoreCaseValue = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events wrapAround
	#tag Event
		Sub Action()
		  lastWrapAroundValue = me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReplaceAll
	#tag Event
		Sub Action()
		  replaceAll
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReplace
	#tag Event
		Sub Action()
		  replace
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnReplaceAndFind
	#tag Event
		Sub Action()
		  replaceAndFind
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnNext
	#tag Event
		Sub Action()
		  call findNext
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Frame"
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
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Behavior"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
#tag EndViewBehavior
