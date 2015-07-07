#tag Window
Begin Window WndAbout
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   True
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   262
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   262
   MinimizeButton  =   True
   MinWidth        =   446
   Placement       =   2
   Resizeable      =   True
   Title           =   "About"
   Visible         =   True
   Width           =   446
   Begin HTMLViewer HtmlViewerAbout
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   262
      HelpTag         =   ""
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Renderer        =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Visible         =   True
      Width           =   446
   End
End
#tag EndWindow

#tag WindowCode
	#tag Constant, Name = kAbout, Type = String, Dynamic = False, Default = \"<html>\n<head>\n\t<title>About XsEdit</title>\n\t<style>\n\t\tbody {\n\t\t\tmargin: 0;\n\t\t\tpadding: 0;\n\t\t\toverflow-x: hidden;\n\t\t}\n\t\t\n\t\ta\x2C a:visited {\n\t\t\tcolor: #0000ff;\n\t\t}\n\t\t\n\t\t#appHeader {\n\t\t\tbackground-color: #efefef;\n\t\t\tmargin:0px;\n\t\t}\n\t\t\n\t\t#appTitle {\n\t\t\ttext-align: center;\n\t\t\tfont-size: 2.0em;\n\t\t\tfont-weight: bold;\n\t\t\tpadding: 12px 30px;\n\t\t}\n\t\t\n\t\t#appVer {\n\t\t\ttext-align: center;\n\t\t\tfont-size: 0.8em;\n\t\t\tmargin-bottom: 12px;\n\t\t\tpadding-bottom: 8px;\n\t\t\tborder-bottom: 1px solid #808080;\n\t\t}\n\t\t\n\t\t#about {\n\t\t\tpadding: 0px 30px;\n\t\t\theight: 120px;\n\t\t\toverflow-y: scroll;\n\t\t}\n\t\t\n\t\t#copyright {\n\t\t\ttext-align: center;\n\t\t\tbottom: 0px;\n\t\t\tposition: absolute;\n\t\t\twidth: 100%;\n\t\t\tpadding: 4px;\n\t\t\tborder-top: 1px solid #808080;\n\t\t\tbackground-color: #efefef;\n\t\t\tfont-size: 0.8em;\n\t\t}\n\t</style>\n</head>\n\n<body>\n<div id\x3D\"appHeader\">\n\t<div id\x3D\"appTitle\">XsEdit</div>\n\t<div id\x3D\"appVer\">$(Version)</div>\n</div>\n\n<div id\x3D\"about\">\n\t<p>\n\t\tAn advanced open-source XojoScript editor\n\t</p>\n\t<p>\n\t\tA <strong>special thanks</strong> goes out to Thomas Tempelmann for the open source\n\t\t<a href\x3D\"https://github.com/tempelmann/custom-editfield\">Custom Edit Field</a>.\n\t</p>\n\t<p>\n\t\tXsEdit is is distributed under the\n\t\t<a href\x3D\"https://raw.githubusercontent.com/ktekinay/XsEdit/develop/LICENSE.txt\">MIT license</a>.\n\t</p>\n</div>\n\n<div id\x3D\"copyright\">\n\tCopyright &copy;2015 by Kem Tekinay and Jeremy Cowgar. All rights reserved.\n</div>\n</html>", Scope = Private
	#tag Property, Flags = &h21
		Private IsInitialLoad As Boolean = True
	#tag EndProperty


	#tag EndConstant


#tag EndWindowCode

#tag Events HtmlViewerAbout
	#tag Event
		Sub Open()
		  IsInitialLoad = true
		  
		  dim msg as String = kAbout
		  msg = msg.ReplaceAll( "$(Version)", App.ShortVersion )
		  
		  me.LoadPage msg, nil
		End Sub
	#tag EndEvent
	#tag Event
		Function CancelLoad(URL as String) As Boolean
		  if IsInitialLoad then
		    IsInitialLoad = false
		    return false
		  else
		    ShowURL( URL )
		    return true
		  end if
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
