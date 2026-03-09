!macro CustomCodePostInstall

	Rename $INSTDIR\App\VSCode-win32-ia32 $INSTDIR\App\VSCode
	CreateDirectory $INSTDIR\App\VSCode\data

!macroend
