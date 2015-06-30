#tag Class
Protected Class XsEditWindowBase
Inherits Window
	#tag Event
		Sub Close()
		  RaiseEvent Close
		  App.Prefs.Store self
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  App.Prefs.Restore self
		  RaiseEvent Open()
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook


End Class
#tag EndClass
