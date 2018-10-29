#define MyAppName "Bitsum Wallet"
#define MyAppVersion "1.18.10.29"
#define MyAppPublisher "Bitsum Foundation"

[Setup]
DisableWelcomePage=no
AppId={{A7717F1E-595C-4E3D-BE19-24538823D74C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultGroupName={#MyAppName}
OutputBaseFilename=wallet_windows_x64
Compression=lzma/ultra64
SolidCompression=True
InternalCompressLevel=ultra64
SetupIconFile=icon.ico
WizardImageFile=164x314.bmp
WizardSmallImageFile=55x55.bmp
AppCopyright=Copyright (C) {#MyAppPublisher}, 2018
OutputDir=bin
AlwaysShowGroupOnReadyPage=True
AlwaysShowDirOnReadyPage=True
AppMutex=2465A86D-0A16-48F7-9C7A-D616564C71C8
AppComments=Bitsum
AppContact=info@bitsum.uz
VersionInfoVersion={#MyAppVersion}
VersionInfoCompany={#MyAppPublisher}
VersionInfoDescription=Bitsum Blockchain
VersionInfoTextVersion={#MyAppVersion}
VersionInfoCopyright=Copyright (C) {#MyAppPublisher}, 2018
VersionInfoProductName=Bitsum
VersionInfoProductVersion={#MyAppVersion}
VersionInfoProductTextVersion={#MyAppVersion}
ShowLanguageDialog=no
LanguageDetectionMethod=none
WizardImageStretch=False
PrivilegesRequired=lowest
CloseApplications=False
Uninstallable=yes
UsePreviousSetupType=False
DisableReadyPage=True
DefaultDirName={commonappdata}\Bitsum
RestartApplications=False
UninstallDisplayName=Bitsum Wallet
UninstallDisplayIcon={uninstallexe}
ArchitecturesInstallIn64BitMode=x64
UsePreviousGroup=False
AlwaysUsePersonalGroup=True
AppendDefaultGroupName=False

[Files]
Source: "..\bin\x64\*"; DestDir: "{app}"; Flags: recursesubdirs replacesameversion

[Run]
Filename: "{app}\bitsum-gui.exe"; WorkingDir: "{app}"; Flags: nowait postinstall shellexec; Description: "Start {#MyAppName}"

[Icons]
Name: "{userdesktop}\Bitsum Wallet"; Filename: "{app}\bitsum-gui.exe"; WorkingDir: "{app}"; IconFilename: "{app}\bitsum-gui.exe"; IconIndex: 0
Name: "{group}\Bitsum Wallet"; Filename: "{app}\bitsum-gui.exe"; WorkingDir: "{app}"; IconFilename: "{app}\bitsum-gui.exe"; IconIndex: 0
Name: "{group}\Data Folder"; Filename: "{userappdata}\bitsum"; WorkingDir: "{userappdata}\bitsum"; IconFilename: "{app}\bitsum-gui.exe"; IconIndex: 0