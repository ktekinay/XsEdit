#tag Class
Protected Class Preferences
	#tag Method, Flags = &h0
		Function BooleanValue(name as String, default as Boolean = False) As Boolean
		  Return ChildAdHocValues.Lookup(name, default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BooleanValue(name as String, assigns value as Boolean)
		  ChildAdHocValues.Value(name) = value
		  InformWatchers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(applicationId as String)
		  Self.ApplicationId = applicationId
		  PreferenceFile = EnsurePreferencesFile
		  
		  Storage = new Xojo.Core.Dictionary
		  
		  Storage.Value("Version") = kVersion
		  Storage.Value(kKeyValues) = nil
		  
		  LoadPreferences
		  
		  WatcherTimer = new Timer
		  AddHandler WatcherTimer.Action, WeakAddressOf WatcherTimerAction
		  WatcherTimer.Mode = Timer.ModeOff
		  WatcherTimer.Period = 20
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeletePreferencesFile()
		  if PreferenceFile <> nil and PreferenceFile.Exists then
		    PreferenceFile.Delete
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Destructor()
		  Save
		  
		  WatcherTimer.Mode = Timer.ModeOff
		  RemoveHandler WatcherTimer.Action, WeakAddressOf WatcherTimerAction
		  WatcherTimer = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DoubleValue(name as String, default as Double = 0) As Double
		  Return ChildAdHocValues.Lookup(name, default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoubleValue(name as String, assigns value as Double)
		  ChildAdHocValues.Value(name) = value
		  InformWatchers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function EnsurePreferencesFile() As FolderItem
		  dim root as FolderItem = SpecialFolder.ApplicationData.Child(ApplicationId)
		  if not root.Exists then
		    root.CreateAsFolder
		  end if
		  
		  return root.Child("prefs.json")
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetValuesChild(name As String) As Xojo.Core.Dictionary
		  if Storage is nil then
		    return nil
		  end if
		  
		  dim values as Xojo.Core.Dictionary = Storage.Lookup(kKeyValues, nil)
		  if values is nil then
		    values = new Xojo.Core.Dictionary
		    Storage.Value(kKeyValues) = values
		  end if
		  
		  dim result as Xojo.Core.Dictionary = values.Lookup(name, nil)
		  if result is nil then
		    result = new Xojo.Core.Dictionary
		    values.Value(name) = result
		  end if
		  
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InformWatchers()
		  WatcherTimer.Mode = Timer.ModeSingle
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IntegerValue(name as String, default as Integer = 0) As Integer
		  Return ChildAdHocValues.Lookup(name, default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub IntegerValue(name as String, assigns value as Integer)
		  ChildAdHocValues.Value(name) = value
		  InformWatchers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function IsWindowVisible(left As Integer, top As Integer, width as Integer) As Boolean
		  dim result as boolean
		  
		  #if TargetDesktop then
		    const kBuffer = 10
		    
		    
		    dim t as integer = top
		    dim l as integer = left
		    dim r as integer = l + width
		    
		    dim lastScreen as integer = ScreenCount - 1
		    for i as integer = 0 to lastScreen
		      dim thisScreen as Screen = Screen(i)
		      
		      if t < thisScreen.AvailableTop or t > (thisScreen.AvailableTop + thisScreen.AvailableHeight - kBuffer) then
		        continue for i
		      end if
		      
		      if l >= thisScreen.AvailableLeft and l < (thisScreen.AvailableLeft + thisScreen.AvailableWidth - kBuffer) then
		        result = true
		        exit
		      end if
		      
		      if r <= (thisScreen.AvailableLeft + thisScreen.AvailableWidth) and r > (thisScreen.AvailableLeft + kBuffer) then
		        result = true
		        exit
		      end if
		    next
		  #endif
		  
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub LoadPreferences()
		  dim pfile as FolderItem = EnsurePreferencesFile
		  
		  if not pfile.Exists then
		    return
		  end if
		  
		  dim tis as TextInputStream = TextInputStream.Open(pfile)
		  dim t as string = tis.ReadAll(Encodings.UTF8)
		  tis.Close
		  tis = nil
		  
		  dim parsed as Auto = Xojo.Data.ParseJSON(t.ToText)
		  Storage = Xojo.Core.Dictionary(parsed)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function MakeKey(prefix As String, o As Object) As String
		  dim key() as string
		  
		  if prefix <> "" then
		    key.Append prefix
		  end if
		  
		  dim hasWin as boolean
		  
		  #if TargetDesktop then
		    if o IsA RectControl then
		      dim rc as RectControl = RectControl(o)
		      dim win as Window = rc.Window
		      if win IsA Object then
		        key.Append Introspection.GetType(win).FullName
		        hasWin = true
		      end if
		      key.Append rc.Name
		    end if
		  #endif
		  
		  dim ti as Introspection.TypeInfo = Introspection.GetType(o)
		  if not hasWin then
		    key.Append ti.FullName
		  end if
		  
		  return join(key, ".")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RegisterWatcher(watcher As PreferenceWatcher)
		  //
		  // Don't register the same watcher twice
		  //
		  UnregisterWatcher( watcher )
		  Watchers.Append watcher
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Remove(key as String)
		  if ChildAdHocValues.HasKey(key) then
		    ChildAdHocValues.Remove(key)
		    InformWatchers
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Restore(widget As Listbox, prefix As String = "")
		  dim fk as string = MakeKey(prefix, widget)
		  dim child as Xojo.Core.Dictionary = ChildListboxValues.Lookup(fk, nil)
		  if child is nil then
		    return
		  end if
		  
		  dim widths as Variant = child.Lookup("Widths", nil)
		  if widths.IsArray then
		    dim j() as Auto
		    if true then // Scope
		      dim a as auto = widths
		      j = a
		    end if
		    dim lastCol as integer = if(j.Ubound >= widget.ColumnCount, widget.ColumnCount - 1, j.Ubound)
		    for col as integer = 0 to lastCol
		      dim thisWidth as integer = j(col)
		      widget.Column(col).WidthActual = thisWidth
		      widget.Column(col).WidthExpression = str(thisWidth)
		    next
		    
		  elseif not widths.IsNull then
		    widget.ColumnWidths = widths.StringValue
		    
		  end if
		  
		  if child.HasKey("SortedColumn") then
		    widget.SortedColumn = child.Value("SortedColumn")
		    widget.HeadingIndex = child.Value("SortedColumn")
		    widget.ColumnSortDirection(widget.SortedColumn) = child.Value("SortDirection")
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Restore(widget as TabPanel, prefix as String = "")
		  dim fk as string = MakeKey(prefix, widget)
		  dim child as Xojo.Core.Dictionary = ChildTabPanelValues.Lookup(fk, nil)
		  if child is nil then
		    return
		  end if
		  
		  widget.Value = child.Lookup("Value", widget.Value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Restore(win as Window, prefix as String = "", left as Integer = - 1, top as Integer = - 1, width as Integer = - 1, height as Integer = - 1)
		  dim bounds as REALBasic.Rect = win.Bounds
		  
		  dim proposedLeft as Integer = if(left = -1, bounds.Left, left)
		  dim proposedTop as Integer = if(top = -1, bounds.Top, top)
		  dim proposedWidth as Integer = if(width = -1, bounds.Width, width)
		  dim proposedHeight as Integer = if(height = -1, bounds.Height, height)
		  
		  dim fk as string = MakeKey(prefix, win)
		  dim child as Xojo.Core.Dictionary = ChildWindowValues.Lookup(fk, nil)
		  if child isa Xojo.Core.Dictionary then
		    proposedLeft = child.Lookup("Left", proposedLeft)
		    proposedTop = child.Lookup("Top", proposedTop)
		    
		    if win.Resizeable then
		      proposedWidth = child.Lookup("Width", proposedWidth)
		      proposedHeight = child.Lookup("Height", proposedHeight)
		    end if
		  end if
		  
		  if not win.Resizeable or proposedWidth < win.MinWidth or proposedWidth > win.MaxWidth then
		    proposedWidth = bounds.Width
		  end if
		  
		  if not win.Resizeable or proposedHeight < win.MinHeight or proposedHeight > win.MaxHeight then
		    proposedHeight = bounds.Height
		  end if
		  
		  if IsWindowVisible(proposedLeft, proposedTop, proposedWidth) then
		    bounds.Left = proposedLeft
		    bounds.Top = proposedTop
		  end if
		  
		  if win.Resizeable then
		    bounds.Width = proposedWidth
		    bounds.Height = proposedHeight
		  end if
		  
		  win.Bounds = bounds
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  dim pfile as FolderItem = EnsurePreferencesFile
		  dim tos as TextOutputStream = TextOutputStream.Create(pfile)
		  
		  tos.Write Xojo.Data.GenerateJSON(Storage)
		  
		  tos.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Store(widget as Listbox, prefix as String = "")
		  dim child as new Xojo.Core.Dictionary
		  
		  if widget.ScrollBarHorizontal then
		    dim widths() as Auto
		    
		    for i as Integer = 0 to widget.ColumnCount - 1
		      widths.Append widget.Column(i).WidthActual
		    next
		    
		    child.Value("Widths") = widths
		    
		  else
		    child.Value("Widths") = widget.ColumnWidths
		  end if
		  
		  child.Value("SortedColumn") = widget.SortedColumn
		  child.Value("SortDirection") = if(widget.SortedColumn = -1, 0, widget.ColumnSortDirection(widget.SortedColumn))
		  
		  dim fk as string = MakeKey(prefix, widget)
		  ChildListboxValues.Value(fk) = child
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Store(widget as TabPanel, prefix as String = "")
		  dim child as new Xojo.Core.Dictionary
		  
		  child.Value("Value") = widget.Value
		  
		  dim fk as string = MakeKey(prefix, widget)
		  ChildTabPanelValues.Value(fk) = child
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, CompatibilityFlags = TargetHasGUI
		Sub Store(win as Window, prefix as String = "")
		  dim child as new Xojo.Core.Dictionary
		  
		  dim bounds as REALbasic.Rect = win.Bounds
		  child.Value("Left") = bounds.Left
		  child.Value("Top") = bounds.Top
		  child.Value("Width") = bounds.Width
		  child.Value("Height") = bounds.Height
		  
		  dim fk as string = MakeKey(prefix, win)
		  ChildWindowValues.Value(fk) = child
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StringValue(name as String, default as String = "") As String
		  Return ChildAdHocValues.Lookup(name, default)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StringValue(name as String, assigns value as String)
		  ChildAdHocValues.Value(name) = value
		  InformWatchers
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UnregisterWatcher(watcher As PreferenceWatcher)
		  dim pos as integer = Watchers.IndexOf( watcher )
		  if pos <> -1 then
		    Watchers.Remove pos
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WatcherTimerAction(sender As Timer)
		  #pragma unused sender
		  
		  for each watcher as PreferenceWatcher in Watchers
		    watcher.PreferencesHaveChanged( self )
		  next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected ApplicationId As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return GetValuesChild("Ad Hoc Values")
			  
			End Get
		#tag EndGetter
		Protected ChildAdHocValues As Xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return GetValuesChild("Listboxes")
			  
			End Get
		#tag EndGetter
		Protected ChildListboxValues As Xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return GetValuesChild("TabPanels")
			  
			End Get
		#tag EndGetter
		Protected ChildTabPanelValues As Xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  return GetValuesChild("Windows")
			  
			End Get
		#tag EndGetter
		Protected ChildWindowValues As Xojo.Core.Dictionary
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected PreferenceFile As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if PreferenceFile <> nil then
			    return PreferenceFile.Parent
			  else
			    return nil
			  end if
			End Get
		#tag EndGetter
		PreferenceFolder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected Storage As Xojo.Core.Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Watchers() As PreferenceWatcher
	#tag EndProperty

	#tag Property, Flags = &h21
		Private WatcherTimer As Timer
	#tag EndProperty


	#tag Constant, Name = kKeyObjectType, Type = String, Dynamic = False, Default = \"Object Type", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kKeyValues, Type = String, Dynamic = False, Default = \"Values", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kVersion, Type = String, Dynamic = False, Default = \"1.1", Scope = Protected
	#tag EndConstant


	#tag ViewBehavior
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
