#tag Class
Protected Class ContextPreferences
	#tag Method, Flags = &h0
		Function Clone() As ContextPreferences
		  dim copy as new ContextPreferences
		  
		  copy.BackgroundColor = BackgroundColor
		  copy.Bold = Bold
		  copy.HasBackgroundColor = HasBackgroundColor
		  copy.HighlightColor = HighlightColor
		  copy.Italic = Italic
		  copy.Name = Name
		  copy.Underline = Underline
		  
		  return copy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(syntaxFile As FolderItem, contextName As String)
		  dim contexts as Dictionary = ContextsForFile( syntaxFile )
		  dim context as HighlightContext = contexts.Value( contextName )
		  
		  //
		  // Assign the defaults
		  //
		  BackgroundColor = context.BackgroundColor
		  Bold = context.Bold
		  DefaultBackgroundColor = context.BackgroundColor
		  HasBackgroundColor = context.HasBackgroundColor
		  HighlightColor = context.HighlightColor
		  Italic = context.Italic
		  Name = contextName
		  Underline = context.Underline
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ContextsDict() As Dictionary
		  if mContextsDict is nil then
		    mContextsDict = new Dictionary
		  end if
		  
		  return mContextsDict
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function ContextsForFile(syntaxFile As FolderItem) As Dictionary
		  dim r as Dictionary = ContextsDict.Lookup( syntaxFile.NativePath, nil )
		  if r is nil then
		    r = new Dictionary
		    dim hd as new HighlightDefinition
		    if not hd.LoadFromXml( syntaxFile ) then
		      dim err as new XmlException
		      err.Message = "Could not read syntax file " + syntaxFile.NativePath
		      raise err
		    end if
		    
		    for each context as HighlightContext in hd.Contexts
		      r.Value( context.Name ) = context
		    next
		    
		    ContextsDict.Value( syntaxFile.NativePath ) = r
		  end if
		  
		  return r
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CopyTo(context As HighlightContext)
		  context.HighlightColor = HighlightColor
		  context.BackgroundColor = if( HasBackgroundColor, BackgroundColor, DefaultBackgroundColor )
		  context.Bold = Bold
		  context.Italic = Italic
		  context.Underline = Underline
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BackgroundColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Bold As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DefaultBackgroundColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		HasBackgroundColor As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		HighlightColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		Italic As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mContextsDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Underline As Boolean
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="HighlightColor"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
