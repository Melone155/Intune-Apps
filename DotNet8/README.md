# DotNet 8

## Allgemeine Informationen

| Einstellung | Wert |
|---|---|
| Software | DotNet 8 |
| Version | 8.0.31 |
| Hersteller | Micosoft |
| Intune App-Typ | Windows-App (Win32) |
| Installationsverhalten | System / Benutzer |
| Architektur | x32 |
| Neustart erforderlich | Nein |
| Installationsbefehl | powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\install.ps1" |
| Deinstallationsbefehl | powershell.exe -NoProfile -ExecutionPolicy Bypass -File ".\uninstall.ps1" |
---
#Erkennungsregel

| Einstellung | Wert |
|---|---|
| Regelformat | Erkennungsregeln manuell konfigurieren |
| Regeltyp | Datei |
| Pfad |  |
| Datei oder Ordner |  |

## Benötigte Dateien

Folgende Dateien werden für das Intune-Paket benötigt:

- `dotnet8x86.exe`
- `install.ps1`
- `uninstall.ps1`

Alle benötigten Dateien müssen sich vor der Erstellung des Intune-Pakets im Softwareordner befinden.

---

## Intune-Paket erstellen

### Quelldateien

```text
Input/
├── dotnet8x86.exe
├── install.ps1
└── uninstall.ps1
