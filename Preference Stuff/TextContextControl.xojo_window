#tag Window
Begin ContainerControl TextContextControl
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   32
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   431
   Begin Label lblContextName
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
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      Text            =   "Context:"
      TextAlign       =   2
      TextColor       =   &c00000000
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   7
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   88
   End
   Begin ColorPicker_MTC cpForeground
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
      Left            =   100
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PromptText      =   "Select a color:"
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Value           =   &c00000000
      Visible         =   True
      Width           =   32
   End
   Begin CheckBox cbBold
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Bold"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   65
   End
   Begin CheckBox cbItalic
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Italic"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      State           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   6
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   65
   End
   Begin ColorPicker_MTC cpBackground
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
      Left            =   136
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PromptText      =   "Select a color:"
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   True
      Value           =   &c00000000
      Visible         =   True
      Width           =   32
   End
   Begin CheckBox cbUnderline
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Underline"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   334
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
      Top             =   6
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   97
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ColorPickerConstructContextMenu(base As MenuItem)
		  base.Append new MenuItem( kMenuRestoreDefault )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ColorPickerContextualMenuAction(sender as ColorPicker_MTC, hitItem As MenuItem) As Boolean
		  
		  select case hitItem.Text
		  case kMenuRestoreDefault
		    
		    dim prefs as ContextPreferences = DefaultPreferences
		    if sender is cpForeground then
		      sender.Value = prefs.HighlightColor
		    elseif sender is cpBackground then
		      HasBackgroundColor = prefs.HasBackgroundColor
		      if HasBackgroundColor then
		        sender.Value = prefs.BackgroundColor
		      else
		        sender.Value = kDefaultBackgroundColor
		      end if
		    end if
		    
		  case else
		    return false
		    
		  end select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RestoreDefaults()
		  dim pref as ContextPreferences = DefaultPreferences.Clone
		  SetFromPrefs( pref, DefaultPreferences )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFromPrefs(prefs As ContextPreferences, defaultPrefs As ContextPreferences)
		  cbBold.Value = prefs.Bold
		  cbItalic.Value = prefs.Italic
		  cbUnderline.Value = prefs.Underline
		  
		  if prefs.HasBackgroundColor then
		    cpBackground.Value = prefs.BackgroundColor
		  else
		    cpBackground.Value = &cFFFFFF00
		  end
		  
		  cpForeground.Value = prefs.HighlightColor
		  
		  DefaultPreferences = defaultPrefs
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToContextPreferences() As ContextPreferences
		  dim r as ContextPreferences = DefaultPreferences.Clone
		  
		  r.BackgroundColor = cpBackground.Value
		  r.Bold = cbBold.Value
		  r.HasBackgroundColor = HasBackgroundColor
		  r.HighlightColor = cpForeground.Value
		  r.Italic = cbItalic.Value
		  r.Underline = cbUnderline.Value
		  
		  return r
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if HasBackgroundColor then
			    return cpBackground.Value
			    
			  else
			    return kDefaultBackgroundColor
			    
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  cpBackground.Value = value
			End Set
		#tag EndSetter
		Background As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return cbBold.Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  cbBold.Value = value
			End Set
		#tag EndSetter
		Bold As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mContextName
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mContextName = value
			  lblContextName.Text = value + ":"
			End Set
		#tag EndSetter
		ContextName As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private DefaultPreferences As ContextPreferences
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return cpForeground.Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  cpForeground.Value = value
			End Set
		#tag EndSetter
		Foreground As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private HasBackgroundColor As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return cbItalic.Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  cbItalic.Value = value
			End Set
		#tag EndSetter
		Italic As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mContextName As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return cbUnderline.Value
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  cbUnderline.Value = value
			End Set
		#tag EndSetter
		Underline As Boolean
	#tag EndComputedProperty


	#tag Constant, Name = kDefaultBackgroundColor, Type = Color, Dynamic = False, Default = \"&cFFFFFF00", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kMenuRestoreDefault, Type = String, Dynamic = False, Default = \"Restore Default", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events cpForeground
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma unused x
		  #pragma unused y
		  
		  ColorPickerConstructContextMenu( base )
		  return true
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  return ColorPickerContextualMenuAction( me, hitItem )
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events cpBackground
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #pragma unused x
		  #pragma unused y
		  
		  ColorPickerConstructContextMenu( base )
		  return true
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  return ColorPickerContextualMenuAction( me, hitItem )
		End Function
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  if me.Value <> kDefaultBackgroundColor then
		    HasBackgroundColor = true
		  else
		    HasBackgroundColor = false
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="Background"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Bold"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ContextName"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Foreground"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Italic"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
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
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Underline"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
