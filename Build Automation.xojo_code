#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopySyntaxDefinitionMac
					AppliesTo = 0
					Destination = 1
					Subdirectory = Syntax Definitions
					FolderItem = Li4AT3RoZXIgRmlsZXMAU3ludGF4IERlZmluaXRpb24AWG9qb1NjcmlwdC54bWw=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
