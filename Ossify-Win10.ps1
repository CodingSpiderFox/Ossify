#################################################################
Write-Host 'Removing bloatware...'
	[Array]$Apps =
		'Microsoft.3DBuilder',
		'Microsoft.Appconnector',
		'Microsoft.BingFinance',
		'Microsoft.BingNews',
		'Microsoft.BingSports',
		'Microsoft.BingTranslator',
		'Microsoft.BingWeather',
		'Microsoft.FreshPaint',
		'Microsoft.Microsoft3DViewer',
		'Microsoft.MicrosoftOfficeHub',
		'Microsoft.MicrosoftSolitaireCollection',
		'Microsoft.MicrosoftPowerBIForWindows',
		'Microsoft.MinecraftUWP',
		'Microsoft.MicrosoftStickyNotes',
		'Microsoft.NetworkSpeedTest',
		'Microsoft.Office.OneNote',
		'Microsoft.OneConnect',
		'Microsoft.People',
		'Microsoft.Print3D',
		'Microsoft.SkypeApp',
		'Microsoft.Wallet',
		'Microsoft.WindowsAlarms',
		'Microsoft.WindowsCamera',
		'Microsoft.windowscommunicationsapps',
		'Microsoft.WindowsMaps',
		'Microsoft.WindowsPhone',
		'Microsoft.WindowsSoundRecorder',
		'Microsoft.XboxApp',
		'Microsoft.XboxGameOverlay',
		'Microsoft.XboxIdentityProvider',
		'Microsoft.XboxSpeechToTextOverlay',
		'Microsoft.ZuneMusic',
		'Microsoft.ZuneVideo',
		'Microsoft.CommsPhone',
		'Microsoft.ConnectivityStore',
		'Microsoft.GetHelp',
		'Microsoft.Getstarted',
		'Microsoft.Messaging',
		'Microsoft.Office.Sway',
		'Microsoft.OneConnect',
		'Microsoft.WindowsFeedbackHub',
		'Microsoft.Microsoft3DViewer',
		'Microsoft.BingFoodAndDrink',
		'Microsoft.BingTravel',
		'Microsoft.BingHealthAndFitness',
		'Microsoft.WindowsReadingList',
		'9E2F88E3.Twitter',
		'PandoraMediaInc.29680B314EFC2',
		'Flipboard.Flipboard',
		'ShazamEntertainmentLtd.Shazam',
		'king.com.CandyCrushSaga',
		'king.com.CandyCrushSodaSaga',
		'king.com.*',
		'ClearChannelRadioDigital.iHeartRadio',
		'4DF9E0F8.Netflix',
		'6Wunderkinder.Wunderlist',
		'Drawboard.DrawboardPDF',
		'2FE3CB00.PicsArt-PhotoStudio',
		'D52A8D61.FarmVille2CountryEscape',
		'TuneIn.TuneInRadio',
		'GAMELOFTSA.Asphalt8Airborne',
		'TheNewYorkTimes.NYTCrossword',
		'DB6EA5DB.CyberLinkMediaSuiteEssentials',
		'Facebook.Facebook',
		'flaregamesGmbH.RoyalRevolt2',
		'Playtika.CaesarsSlotsFreeCasino',
		'A278AB0D.MarchofEmpires',
		'KeeperSecurityInc.Keeper',
		'ThumbmunkeysLtd.PhototasticCollage',
		'XINGAG.XING',
		'89006A2E.AutodeskSketchBook',
		'D5EA27B7.Duolingo-LearnLanguagesforFree',
		'46928bounde.EclipseManager',
		'ActiproSoftwareLLC.562882FEEB491',
		'DolbyLaboratories.DolbyAccess',
		'A278AB0D.DisneyMagicKingdoms',
		'WinZipComputing.WinZipUniversal',
		'Microsoft.ScreenSketch',
		'Microsoft.XboxGamingOverlay',
		'Microsoft.YourPhone'
	Foreach ($App in $Apps) {
		Get-AppxPackage $App | Remove-AppxPackage -AllUsers -ErrorAction 'SilentlyContinue'
	}
	Write-Host 'Done.'

#################################################################
Write-Warning 'Disabling Windows services...'
	[Array]$Services =
		'lmhosts', # TCP/IP NetBIOS Helper
		'wlidsvc', # Microsoft Account Sign-in Assistant
		'SEMgrSvc', # Payments NFC/SE Manager
		'tzautoupdate', # Auto Time Zone Updater
		'AppVClient', # Microsoft App-V Client
		'RemoteRegistry', # Remote Registry
		'RemoteAccess', # Routing & Remote Access
		'shpamsvc', # Shared PC Account Manager
		'UevAgentService', # User Experience Virtualization Service
		'WdiServiceHost', # Diagnostic Service Host
		'WdiSystemHost', # Diagnostic System Host
		'ALG', # Application Layer Gateway
		'PeerDistSvc', # BranchCache
		'Eaphost', # Extensible Authentication Protocol
		'fdPHost', # Function Discovery Provider Host
		'LxpSvc', # Language Experience Service
		'lltdsvc', # Link-Layer Topology Discovery Mapper
		'diagnosticshub.standardcollector.service', # Microsoft (R) Diagnostics Hub Standard Collector Service
		'MSiSCSI', # Microsoft iSCSI Initiator Service
		'WpcMonSvc', # WpcMonSvc
		'PNRPsvc', # Peer Name Resolution Protocol
		'p2psvc', # Peer Networking Grouping
		'p2pimsvc', # Peer Networking Identity Manager
		'PerfHost', # Performance Counter DLL Host
		'pla', # Performance Logs & Alerts
		'PNRPAutoReg', # PNRP Machine Name Publication
		'PrintNotify', # PrintNotify
		'wercplsupport', # Problem Reports & Solutions Control Panel
		'TroubleshootingSvc', # Recommended Troubleshooting Service
		'SessionEnv', # Remote Desktop Configuration
		'TermService', # Remote Desjtop Service
		'UmRdpService', # Remote Desktop Services UserMode Port Redirector
		'RpcLocator', # Remote Procedure Call (RPC) Locator
		'RetailDemo', # Retail Demo Service
		'SCPolicySvc', # Smart Card Removal Policy
		'SNMPTRAP', # SNMP Trap
		'SharedRealitySvc', # Spatial Data Service
		'WiaRpc', # Still Image Acquisition Events
		'VacSvc', # Volumetric Audio Compositor Service
		'WalletService', # WalletService
		'wcncsvc', # Windows Connect Now
		'Wecsvc', # Windows Event Collector
		'perceptionsimulation', # Windows Perception Simulation Service
		'WinRM', # Windows Remote Management (WS-Management)
		'wmiApSrv', # WMI Performance Adapter
		'WwanSvc', # WWAN AutoConfig
		'XblAuthManager', # Xbox Live Auth Manager
		'XboxNetApiSvc', # Xbox Live Networking Service
		'RasAuto', # Remote Access Auto Connection Manager
		'XblGameSave', # Xbox Live Game Save
		'XboxGipSvc', # Xbox Accessory Management
		'PushToInstall', # Windows PushToInstall Service
		'spectrum', # Windows Perception Service
		'icssvc', # Windows Mobile Hotspot Service
		'wisvc', # Windows Insider Service
		'WerSvc', # Windows Error Reporting Service
		'FrameServer', # Windows Camera Frame Service
		'WFDSConMgrSvc', # Wi-Fi Direct Services Connection Manager Service
		'ScDeviceEnum', # Smart Card Device Enumeration Service
		'SCardSvr', # Smart Card
		'PhoneSvc', # Phone Service
		'IpxlatCfgSvc', # IP Translation Configuration Service
		'SharedAccess', # Internet Connection Sharing (ICS)
		'vmicvss', # Hyper-V Volume Shadow Copy Requestor
		'vmictimesync', # Hyper-V TIme Synchronization Service
		'vmicrdv', # Hyper-V Remote Desktop Virtualization Service
		'vmicvmsession', # Hyper-V PowerShell Direct Service
		'vmicheartbeat', # Hyper-V Heartbeat Service
		'vmicshutdown', # Hyper-V Guest Shudown Service
		'vmicguestinterface', # Hyper-V Guest Service Interface
		'vmickvpexchange', # Hyper-V Data Exchange Service
		'HvHost', # HV Host Service
		'FDResPub', # Function Discovery Resource Publication
		'diagsvc', # Diagnostic Execution Service
		'autotimesvc', # Cellular Time
		'bthserv', # Bluetooth Support Service
		'BTAGService', # Bluetooth Audio Gateway Service
		'AssignedAccessManagerSvc', # AssignedAccessManager Service
		'AJRouter', # AllJoyn Router Service
		'lfsvc', # Geolocation Service
		'CDPSvc', # Connected Devices Platform Service
		'DiagTrack', # Connected User Experiences and Telemetry
		'DPS', # Diagnostic Policy Service
		'iphlpsvc', # IP Helper
		'RasMan', # Remote Access Connection Manager
		'SstpSvc', # Secure Socket Tunneling Protocol Service
		'ShellHWDetection', # Shell Hardware Detection
		'SSDPSRV', # SSDP Discovery
		'WbioSrvc', # Windows Biometric Service
		'stisvc' # Windows Image Acquisition (WIA)
	Foreach ($Service in $Services) {
		Set-Service -Name $Service -StartupType 'Disabled'
		Stop-Service -Name $Service -Force
	}
	Write-Host 'Done.'
