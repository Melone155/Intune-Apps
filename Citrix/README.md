# Citrix Workspace

## Allgemeine Informationen

| Einstellung | Wert |
|---|---|
| Software | Citrix Workspace |
| Version | 26.3.20.31  |
| Hersteller | Citrix  |
| Intune App-Typ | Windows-App (Win32) |
| Installationsverhalten | System / Benutzer |
| Architektur | x64 |
| Neustart erforderlich | Nein |
| Installationsbefehl | powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\install.ps1" |
| Deinstallationsbefehl | powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\uninstall.ps1" |
---
#Erkennungsregel

| Einstellung | Wert |
|---|---|
| Regelformat | Erkennungsregeln manuell konfigurieren |
| Regeltyp | Datei |
| Pfad | C:\Program Files (x86)\Citrix\ICA Client\SelfServicePlugin\ |
| Datei oder Ordner | SelfService.exe |

## Benötigte Dateien

Folgende Dateien werden für das Intune-Paket benötigt:

- `CitrixWorkspaceApp_x64.exe`
- `install.ps1`
- `uninstall.ps1`

Alle benötigten Dateien müssen sich vor der Erstellung des Intune-Pakets im Softwareordner befinden.

---

## Intune-Paket erstellen

### Quelldateien

```text
Input/
├── CitrixWorkspaceApp_x64.exe
├── install.ps1
└── uninstall.ps1
