# Visual Studio Code Portable

Visual Studio Code is a code editor redefined and optimized for building and
debugging modern web and cloud applications.

Visual Studio Code Portable is the Visual Studio Code text editor packaged with
a PortableApps.com launcher as a portable app, so you can browse in privacy on
your iPod, USB flash drive, portable hard drive, etc. It has all the same
features as Visual Studio Code, plus, it leaves no personal information behind
on the machine you run it on, so you can take it with you wherever you go.

## Download

All other downloads are available [in the Releases section][D1]. Visual Studio Code Portable
is packaged as an online installer and complete zip file.

[D1]: https://github.com/Rombus6/vscode-portable/releases/latest

## Features

*	Runs a full copy of the Visual Studio Code editor.
*	Completely portable - runs off a USB, cloud drive (DropBox, iCloud drive, OneDrive, etc) or hard drive.
*	Does not require administrator privileges, works for any user.
*	No need for any external software - simply download extract and run!
*	Packaged in PortableApps.com format for easy integration.
## Additons 
*   Multi language support: some languages required an extension for support see [PortableApps.com Manual](https://portableapps.com/manuals/PortableApps.comLauncher/topics/languages.html#languages-values) and [Visual Studio Code Marketplace](https://marketplace.visualstudio.com/search?target=VSCode&category=Language%20Packs&sortBy=Installs) for specifics
* Bulit-in Support for various Tools: I use this extensively so it has compatibility with (Git, Cmder & others) see Notes for details   

## System Requirements

*	Microsoft Windows 7 or later x64 only.
*	[PortableApps.com Platform](https://portableapps.com/download) (Optional)

## Credits
*	Visual Studio Code Portable is a redistribution of the [Visual Studio Code](https://code.visualstudio.com) editor, developed by [Microsoft](https://www.microsoft.com).
*	[PortableApps.com platform](https://portableapps.com/download) developed by the [PortableApps.com team](https://portableapps.com).
*   [garethflowers](https://garethflowers.dev/) for versions prior to 3.0.0

## License

*	Visual Studio Code Portable released under [the GPL v2.0 license](https://raw.githubusercontent.com/garethflowers/vscode-portable/master/LICENSE).
*	PortableApps.com Launcher released under [the GPL v2.0 license](https://raw.githubusercontent.com/garethflowers/vscode-portable/master/VSCodePortable-x64/Other/Source/LauncherLicense.txt).
*	The Visual Studio Code editor is released under [the MIT license](https://raw.githubusercontent.com/Microsoft/vscode/master/LICENSE.txt).

## NOTES
* ### Initial setup
    After VSCode is initially ran go to the (user) settings.json fix the formatting error that will arise due the ```[FileWriteN]``` functions within 
    >App\Appinfo\Launcher\VSCodePortable.ini 

    appending instead of replacing this probably is fixable but incredibly minor of an issue

* ### Preface
    ---
    Everything is specifically written with the use of [PortableApps.com Platform](https://portableapps.com/download) in mind any paths should start at
    >\PortableApps\ 
* ### Required additions 
    ---
    * #### [Cmder](https://https://github.com/cmderdev/cmder) Mini
        Everything assumes this going to be used, Provides extended terminal function mainly to the command prompt like command history and suggestion
        [see for install and integration instructions](https://github.com/cmderdev/cmder/wiki/Seamless-VS-Code-Integration)
        Mini distribution is recommended due to smaller size and lack of Git included
    * #### Powershell
        for Powershell history to be portable via Cmder or in general (HistorySavePath) needs to be set Cmder has support run startup add the following to  
        >Common Files\Cmder\config\user_profile.ps1
        ```powershell
        [ScriptBlock]$PrePrompt
        ```
        ```powershell
        Set-PSReadLineOption -HistorySavePath "${env:CMDER_ROOT}\config\ConsoleHost_history.txt"` 
        ```
        or copy the file of the same name in the **Misc** folder of the repo to the same path 

* ###  Recommended Extensions      
    ---
    * #### [Open in External App](https://marketplace.visualstudio.com/items?itemName=YuTengjing.open-in-external-app)
    
* ### Specifically Supported
    ---
    * #### Python
        ---
        * Extension: [Python, Microsoft](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
        * Distribution: [WinPython](https://winpython.github.io) [Download](https://sourceforge.net/projects/winpython/files/)
        
        Pretty straight foreward with this extract the files to  
        >Common Files\WinPY
        ```json
        "python.defaultInterpreterPath": "",
        ```
        is cover by ```[FileWriteN]``` Python history is also made Portable in
        >Cmder\config\.python_history
        
        via the environment variable ```%PYTHON_HISTORY%```    
    * #### Java
        ---
        * Extension: [Extension Pack for Java, Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
        * Distribution: [jdkPortable](https://portableapps.com/apps/utilities/jdkportable) [OpenJDK Portable](https://portableapps.com/apps/utilities/OpenJDK)

            PortableApps.com
    * #### Gradle

    * #### Maven
        ---