# Adobe Acrobat Reader DC

## Allgemeine Informationen

| Einstellung | Wert |
|---|---|
| Software | Adobe Acrobat Reader DC |
| Version | 26.002.21996 |
| Hersteller | Adobe |
| Intune App-Typ | Windows-App (Win32) |
| Installationsverhalten | System / Benutzer |
| Architektur | x64 |
| Neustart erforderlich | Nein |

---

## Benötigte Dateien

Folgende Dateien werden für das Intune-Paket benötigt:

- `Reader_de_install.exe`
- `install.ps1`
- `uninstall.ps1`

Alle benötigten Dateien müssen sich vor der Erstellung des Intune-Pakets im Softwareordner befinden.

---

## Intune-Paket erstellen

### Quelldateien

```text
Input/
├── Reader_de_install.exe
├── install.ps1
└── uninstall.ps1
