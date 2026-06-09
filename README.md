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
    After VSCode is initially ran go to the **(user) settings.json** fix the formatting error that will arise due the ```[FileWriteN]``` functions within 

    ``App\Appinfo\Launcher\VSCodePortable.ini`` 

    Appending instead of replacing this probably is fixable but incredibly minor of an issue

* ### Preface
    ---
    Everything is specifically written with the use of [PortableApps.com Platform](https://portableapps.com/download) in mind any paths should start at ``\PortableApps\``

    References to a **Misc** Folder are for the one in the Repository   

* ### Adding Own Support
    ---
    Most Paths can work with environment variables either in the **(user) settings.json** or in the VSCode Portable's **launcher.ini** see [PortableApps.com Launcher Documentation](https://portableapps.com/manuals/PortableApps.comLauncher/) for details
    ``[FileWriteN]`` should be the only other solution necessary 

    **Also Backup the ``Launcher.ini`` if you have made changes to it**

* ### Required additions 
    ---
    * #### [Cmder](https://https://github.com/cmderdev/cmder) Mini
        Everything assumes this going to be used, Provides extended terminal function mainly to the command prompt like command history and suggestion
        [see for install and integration instructions](https://github.com/cmderdev/cmder/wiki/Seamless-VS-Code-Integration)
        Mini distribution is recommended due to smaller size and lack of Git included
    * #### Powershell
        For Powershell history to be portable via Cmder or in general (HistorySavePath) needs to be set Cmder has support run startup add the following to

        ``Common Files\Cmder\config\user_profile.ps1``
        
        ```powershell
        [ScriptBlock]$PrePrompt
        ```
        ```powershell
        Set-PSReadLineOption -HistorySavePath "${env:CMDER_ROOT}\config\ConsoleHost_history.txt"` 
        ```
        or copy the file of the same name in the **Misc** folder of the repo to the same path
    * #### Command-line Utilities
        If you have any Command-line Utilities to add to your terminal environment add them to ``\Common Files\Utilities``
        
        if you need to swap between powershell and cmd use the ``cmder_(terminal).bat`` in the **Misc** folder     

* ###  Recommended Extensions      
    ---
    * #### [Open in External App](https://marketplace.visualstudio.com/items?itemName=YuTengjing.open-in-external-app)
    
* ### Specifically Supported
    ---
    * #### Git
        ---
        * Distribution: [Portable Git](https://git-scm.com/) [Download](https://git-scm.com/install/windows)
            
            Extract contents to
            
            ``Common Files\Git``

            VSCode should just pick it up when launched thanks to ``%HOME%`` **recommend disabling "Git Bash" terminal profile in VScode because it is accessible via other terminal profiles**
    * #### Python
        ---
        * Extension: [Python, Microsoft](https://marketplace.visualstudio.com/items?itemName=ms-python.python)
        * Distribution: [WinPython](https://winpython.github.io) [Download](https://sourceforge.net/projects/winpython/files/)
        
            Pretty straight forward with this extract the files to  

            ``Common Files\WinPY``

            ```json
            "python.defaultInterpreterPath": "",
            ```
            is cover by ``[FileWriteN]`` Python history is also made Portable ``Cmder\config\.python_history``

            via the environment variable ``%PYTHON_HISTORY%``    
    * #### Java
        ---
        * Extension: [Extension Pack for Java, Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-java-pack)
        * Distribution: [jdkPortable](https://portableapps.com/apps/utilities/jdkportable) [OpenJDK Portable](https://portableapps.com/apps/utilities/OpenJDK)
          
            PortableApps.com already have Java Development Kits available and has builtin integration 
            [OpenJDK64](https://portableapps.com/apps/utilities/OpenJDK64) is required as ``[FileWriteN]`` points to it
            ```json
            "java.jdt.ls.java.home": "", 
            ```

            ``%JAVA_HOME%`` Points to ``Common Files\JDK64``
    * #### Gradle
        * Extension: [Gradle for Java, Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle)
        * Distribution: [Gradle](https://gradle.org) [Download](https://gradle.org/releases/)

            This was made with "complete" version but "binary-only" should work extract files to

            ``Common File\Gradle``
            
            ``%GRADLE_USER_HOME%`` points to ``%GRADLE_HOME%\.gradle``

            ``%GRADLE_HOME%\bin`` is added to ``%PATH%``
    * #### Maven
        * Extension: [Maven for Java, Microsoft](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-maven)
        * Distribution: [Maven](https://maven.apache.org) [Download](https://maven.apache.org/download.cgi)
            
            Extract files to

            ``Common Files\Maven``

            add to following to 

            ``Common Files\Maven\conf\settings.xml``

            ```xml
              <localRepository>${maven.home}/.m2/repository</localRepository>
            ```
            the tag may already exist in which case replace it, file is also available **Misc** Folder

            ``%MAVEN_HOME%\bin`` is added to ``%PATH%``
            
            ``%MVN_HOME%`` and ``%M2_HOME%`` maybe be redundant
    * #### Java-Based Servers
        * Extension: [Runtime Server Protocol UI](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-rsp-ui)

            Provides ``[DirectoriesMove]`` for .rsp folder and ``[FileWriteN]`` for
            ```json
                "rsp-ui.rsp.java.home": "",
            ```
        ---
    * #### PHP
        * Extensions: [PHP Debug](https://marketplace.visualstudio.com/items?itemName=xdebug.php-debug) [PHP Intelephense](https://marketplace.visualstudio.com/items?itemName=bmewburn.vscode-intelephense-client)
        * Distribution: [XAMPP](https://www.apachefriends.org/) [Download](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/)

            [PortableApps.com](https://portableapps.com/apps/development/xampp) has a launcher for XAMPP for easy integration with PortableApps.com Platform

            ``[FileWriteN]`` i believe to be need for VSCode's builtin support for PHP
            ```json
            "php.validate.executablePath": ",
            ```
            
        ---
    * #### C#
        * Extension: [C# Dev Kit](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csdevkit)
        * Distribution: [.NET](https://dotnet.microsoft.com/) [Download](https://dotnet.microsoft.com/en-us/download)

            Requires .NET 10 Binaries other versions can added by extracting and not replacing to ``Common Files\Dotnet``
            
            ``%DOTNET_CLI_HOME%`` is added to ``%PATH%``
            
        * Nuget

            this is included in .NET and has been made portable every modification made points to ``%DOTNET_CLI_HOME%\.nuget`` 
        ---
    * #### Node.js
        * Distribution: [Node.js](https://nodejs.org) [Download](https://nodejs.org/en/download)
        
            Standalone binary only extract contents to

            ``Common Files\NodeJS``

            add to ``Common Files\NodeJS\etc\npmrc``
            ```
            cache=${Node}/npm-cache
            ```
            so the cache does not get left in ``%LOCALAPPDATA%``
            
            file is available in the **Misc** Folder

            ``%NODE%`` is added to ``%PATH%``
        ---
    * #### MySQL
        * Extension: [SQL Tools](https://marketplace.visualstudio.com/items?itemName=mtxr.sqltools)
        
        Provides client connective to many Database systems, **Requires Node.js**         
    * #### MySQL Server
        * Distribution: [MySQL](https://www.mysql.com/) [Download](https://dev.mysql.com/downloads/mysql/) 

        **Zip archive only** extract to ``Common Files\MySQL``
        get the ``mysqld.cmd`` from the **Misc** folder the file can only be run from VSCode's integrated terminal because ``%MYSQL%`` is established, to run outside of the integrated terminal create a batch file with following with the same folder as ``mysqld.cmd``
        ```cmd
            @echo off
            setlocal ENABLEDELAYEDEXPANSION
            set "MYSQL=%~dp0"
            set "MYSQL=%MYSQL:\=\\%"
            call mysqld.cmd
        ```     
        **Note ``mysqld.cmd`` establishes an insecure server**

    * #### MariaDB Server
        * Distribution: [XAMPP](https://www.apachefriends.org/) [Download](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/)
        
            XAMPP already provides a MariaDB server

        ---
    