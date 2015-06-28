#tag Class
Protected Class XsEditCustomEditField
Inherits CustomEditField
	#tag Event
		Function KeyDown(key as string) As boolean
		  if Keyboard.CommandKey then
		    select case Asc( key )
		    case KeyboardKeys.kLeftArrow
		      MoveBeginningOfLine
		      return True
		      
		    case KeyboardKeys.kRightArrow
		      MoveEndOfLine
		      return True
		    end select
		    
		  elseif Keyboard.ControlKey then
		    select case Asc( key )
		    case KeyboardKeys.kA
		      MoveBeginningOfLine
		      return True
		      
		    case KeyboardKeys.kE
		      MoveEndOfLine
		      return True
		    end select
		  end if
		  
		  #if DebugBuild then
		    dim mods() as String
		    if Keyboard.ShiftKey then
		      mods.Append "Shift"
		    end if
		    
		    if Keyboard.CommandKey then
		      mods.Append "Cmd"
		    end if
		    
		    if Keyboard.AltKey then
		      mods.Append "Alt"
		    end if
		    
		    if Keyboard.AsyncControlKey then
		      mods.Append "Ctrl"
		    end if
		    
		    if targetwin32 and Keyboard.OSKey then
		      mods.Append "Win"
		    end if
		    
		    dim modLine as String
		    if mods.Ubound > -1 then
		      modLine = Join( mods, "+" ) + "+"
		    end if
		    
		    System.DebugLog "Unhandled key: " + modLine + Str( Asc( key ) )
		  #endif
		  
		  return RaiseEvent KeyDown( key )
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub MoveBeginningOfLine()
		  dim lineNumber as Integer = me.LineNumAtCharPos( me.CaretPos )
		  
		  me.CaretPos = me.CharPosAtLineNum( lineNumber )
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub MoveEndOfLine()
		  dim lineNumber as Integer = me.LineNumAtCharPos( me.CaretPos )
		  dim newCaretPos as Integer = me.CharPosAtLineNum( lineNumber + 1 ) - 1
		  
		  if newCaretPos < 0 and lineNumber <> 0 then
		    dim lineLength as Integer = me.GetLine( lineNumber ).Len
		    newCaretPos = me.CharPosAtLineNum( lineNumber ) + lineLength
		  end if
		  
		  me.CaretPos = newCaretPos
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event KeyDown(key As String) As Boolean
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoCloseBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutocompleteAppliesStandardCase"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoIndentNewLines"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cffffff"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Border"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BracketHighlightColor"
			Visible=true
			Group="Behavior"
			InitialValue="&cFFFF00"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretLine"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaretPos"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClearHighlightedRangesOnTextChange"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DirtyLinesColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cFF9999"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="disableReset"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayDirtyLines"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayInvisibleCharacters"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayLineNumbers"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisplayRightMarginMarker"
			Visible=true
			Group="Appearance"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableAutocomplete"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EnableLineFoldings"
			Visible=true
			Group="Behavior"
			InitialValue="false"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="enableLineFoldingSetting"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterBackgroundColor"
			Visible=true
			Group="Appearance"
			InitialValue="&cEEEEEE"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterSeparationLineColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GutterWidth"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightBlocksOnMouseOverGutter"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBrackets"
			Visible=true
			Group="Behavior"
			InitialValue="true"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HighlightMatchingBracketsMode"
			Visible=true
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Circle"
				"1 - Highlight"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ignoreRepaint"
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentPixels"
			Visible=true
			Group="Behavior"
			InitialValue="16"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndentVisually"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Group="Initial State"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeepEntireTextIndented"
			Visible=true
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
			Name="leftMarginOffset"
			Visible=true
			Group="Appearance"
			InitialValue="4"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersColor"
			Visible=true
			Group="Appearance"
			InitialValue="&c888888"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextFont"
			Visible=true
			Group="Appearance"
			InitialValue="System"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineNumbersTextSize"
			Visible=true
			Group="Appearance"
			InitialValue="9"
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
			Name="MaxVisibleLines"
			Group="Behavior"
			InitialValue="0"
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
			Name="ReadOnly"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightMarginAtPixel"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightScrollMargin"
			Visible=true
			Group="Appearance"
			InitialValue="150"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPosition"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScrollPositionX"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="selLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="selStart"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelText"
			Group="Behavior"
			Type="string"
			EditorType="MultiLineEditor"
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabWidth"
			Visible=true
			Group="Behavior"
			InitialValue="4"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextFont"
			Visible=true
			Group="Appearance"
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextHeight"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextLength"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSelectionColor"
			Visible=true
			Group="Appearance"
			InitialValue="&h000000"
			Type="color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextSize"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThickInsertionPoint"
			Visible=true
			Group="Appearance"
			InitialValue="true"
			Type="boolean"
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
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
