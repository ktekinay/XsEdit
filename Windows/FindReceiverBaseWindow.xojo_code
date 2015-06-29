#tag Class
Protected Class FindReceiverBaseWindow
Inherits Window
	#tag Event
		Sub Activate()
		  mActiveWindow = self
		  RaiseEvent Activate
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  RaiseEvent Close
		  if mActiveWindow is self then
		    mActiveWindow = nil
		  end if
		  
		  if WndFindReplace.IsOpen then
		    WndFindReplace.AdjustControls
		  end if
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function ScriptFind() As Boolean Handles ScriptFind.Action
			WndFindReplace.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h0
		 Shared Function ActiveWindow() As FindReceiverBaseWindow
		  return mActiveWindow
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RaiseFindEvent(type As FindTypes, find As String, replacement As String = "")
		  select case type
		  case FindTypes.FindNext
		    RaiseEvent FindNext( find )
		    
		  case FindTypes.FindPrevious
		    RaiseEvent FindPrevious( find )
		    
		  case FindTypes.FindAll
		    RaiseEvent FindAll( find )
		    
		  case FindTypes.Replace
		    RaiseEvent ReplaceOne( find, replacement )
		    
		  case FindTypes.ReplaceAndFind
		    RaiseEvent ReplaceAndFindNext( find, replacement )
		    
		  case FindTypes.ReplaceAll
		    RaiseEvent ReplaceAll( find, replacement )
		    
		  end
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Activate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FindAll(find As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FindNext(find As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event FindPrevious(find As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReplaceAll(find As String, replacement As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReplaceAndFindNext(find As String, replacement As String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ReplaceOne(find As String, replacement As String)
	#tag EndHook


	#tag Property, Flags = &h21
		Private Shared mActiveWindow As FindReceiverBaseWindow
	#tag EndProperty


	#tag Enum, Name = FindTypes, Type = Integer, Flags = &h0
		FindNext
		  FindPrevious
		  FindAll
		  Replace
		  ReplaceAndFind
		ReplaceAll
	#tag EndEnum


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
End Class
#tag EndClass
