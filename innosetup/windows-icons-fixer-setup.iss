; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D0F14824-5E24-4D88-A947-DF3B47A8716F}
AppName=Windows icons fixer
AppVersion=1.0
;AppVerName=Windows icons fixer 1.0
AppPublisher=Davide Nastri
AppPublisherURL=http://religioneinformatica.blogspot.com
AppSupportURL=http://religioneinformatica.blogspot.com
AppUpdatesURL=http://religioneinformatica.blogspot.com
DefaultDirName={pf}\Windows icons fixer
DefaultGroupName=Windows icons fixer
AllowNoIcons=yes
LicenseFile=C:\Users\Pitto\code\windows-icons-fixer\LICENSE
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "..\dist\windows-icons-fixer.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Windows icons fixer"; Filename: "{app}\windows-icons-fixer.exe"
Name: "{group}\{cm:ProgramOnTheWeb,Windows icons fixer}"; Filename: "http://religioneinformatica.blogspot.com"
Name: "{group}\{cm:UninstallProgram,Windows icons fixer}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Windows icons fixer"; Filename: "{app}\windows-icons-fixer.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Windows icons fixer"; Filename: "{app}\windows-icons-fixer.exe"; Tasks: quicklaunchicon

[Run]
Filename: "{app}\windows-icons-fixer.exe"; Description: "{cm:LaunchProgram,Windows icons fixer}"; Flags: nowait postinstall skipifsilent
