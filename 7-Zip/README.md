# 7-Zip

## Allgemeine Informationen

| Einstellung | Wert |
|---|---|
| Software | 7-Zip |
| Version | 26.04 |
| Hersteller | Igor Pavlov |
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
| Pfad | C:\Program files\7-Zip\ |
| Datei oder Ordner | 7z.exe |

## Benötigte Dateien

Folgende Dateien werden für das Intune-Paket benötigt:

- `7z.exe`
- `install.ps1`
- `uninstall.ps1`

Alle benötigten Dateien müssen sich vor der Erstellung des Intune-Pakets im Softwareordner befinden.

---

## Intune-Paket erstellen

### Quelldateien

```text
Input/
├── 7z.exe
├── install.ps1
└── uninstall.ps1
