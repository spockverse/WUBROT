# WUBROT

**A distortion audio effect by WUBWARE AUDIO.** Add digital grit to bass and other sounds with the Crush Field, or use ROT DNA to shape the tone with a sample. Start with one of three factory presets or load your own WAV or MP3.

**[Windows](https://github.com/spockverse/WUBROT/releases/latest/download/WUBROT-setup.zip)** · **[macOS](https://github.com/spockverse/WUBROT/releases/download/v0.2.185/WUBROT-0.2.185-macOS-Universal.pkg)** · **[Linux](https://github.com/spockverse/WUBROT/releases/download/v0.2.185/WUBROT-0.2.185-Linux-x86_64.deb)** · [All releases](https://github.com/spockverse/WUBROT/releases) · [Changelog](CHANGELOG.md)

<p align="center">
  <img src="images/wubrot-plugin.webp" width="820" alt="WUBROT with the Riddim Monster factory preset loaded. The Crush Field is on the left, with the ROT DNA waveform and Mutate and Drive controls on the right.">
</p>

Built with C++ and JUCE, with an interface written in HTML, CSS, and JavaScript.

## Install on Windows

1. Download `WUBROT-setup.zip` and extract it with **Extract All**.
2. Close your DAW and run `WUBROT-setup.exe` from the extracted folder. Follow the setup wizard. If WebView2 is missing, setup downloads the Microsoft runtime.
3. Reopen your DAW, rescan VST3 plugins if needed, and add **WUBROT** as an effect on an audio or mixer track.

<p align="center">
  <img src="images/wubrot-setup.webp" width="560" alt="WUBROT v0.2.183 Setup Wizard welcome screen on Windows.">
</p>

Setup installs the plugin to the standard Windows VST3 folder.

```text
C:\Program Files\Common Files\VST3\WUBROT.vst3
```

The installer is unsigned, so Windows may show **Unknown publisher**. To uninstall, find **WUBROT VST3** under **Apps** in Windows Settings.

## Install on macOS

Close your DAW and open the macOS `.pkg`. It installs the VST3 and Audio Unit in the system plug-in folders. The installer is unsigned and has not been notarized by Apple. Reopen your DAW and rescan plug-ins after setup.

## Install on Linux

Close your DAW and run this command from the download folder. The package installs the VST3 in `/usr/lib/vst3` and pulls in WebKitGTK.

```sh
sudo apt install ./WUBROT-0.2.185-Linux-x86_64.deb
```

Reopen your DAW and rescan plug-ins.

## Current support

| Platform | Format | Requirements and validation |
|---|---|---|
| Windows | x64 VST3 | A 64-bit VST3 host and Microsoft Edge WebView2 Runtime |
| macOS | Universal VST3 and Audio Unit | Targets macOS 13 and later on Intel and Apple Silicon. Installer, VST3 host, and `auval` checks passed on macOS 15.7.9 on Intel. |
| Linux | x86-64 VST3 | Verified on Ubuntu 24.04 with X11 and WebKitGTK 4.1. |

- **Plugin missing from your DAW?** Rescan VST3 effects. In FL Studio, open **Options → Manage plugins → Find installed plugins**. If you previously installed a portable copy in a custom scan folder, move it out of that folder so your DAW finds the setup-installed copy.
- **Audio works but the editor is blank?** Close the DAW and rerun setup to check the WebView2 installation. You can also get the runtime from [Microsoft Edge WebView2](https://developer.microsoft.com/microsoft-edge/webview2/).

## Updates

On v0.2.185 and newer, open **Settings → Updates → Check for updates** in WUBROT. Choose **Update Now** when a compatible release is available, close your DAW, and complete any installer prompts. Get manual downloads from the [Releases page](https://github.com/spockverse/WUBROT/releases).

Windows users on v0.2.183 can install v0.2.185 from the plug-in. macOS and Ubuntu users on v0.2.184 need one manual upgrade to enable in-plug-in updates.
