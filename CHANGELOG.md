# Changelog

See [GitHub Releases](https://github.com/spockverse/WUBROT/releases) for downloads and checksums.

## [0.2.185](https://github.com/spockverse/WUBROT/releases/tag/v0.2.185) — 2026-11-23

- Unified Windows, macOS, and Ubuntu installers and checksums under one release.
- WUBROT selects the newest stable update for the current platform and verifies the download before handing it off after the DAW closes.
- Windows v0.2.183 can update in the plug-in. macOS and Ubuntu v0.2.184 require one manual upgrade to enable future in-plug-in updates.

## [0.2.184](https://github.com/spockverse/WUBROT/releases/tag/v0.2.184) — 2026-11-23

- Added a universal macOS installer for VST3 and Audio Unit with a macOS 13 minimum. The installed plug-ins passed validation on macOS Sequoia 15.7.9 on Intel.
- Added a Linux x86-64 VST3 installer for Ubuntu 24.04 with X11. The package installs the WebKitGTK dependency.

## [0.2.183](https://github.com/spockverse/WUBROT/releases/tag/v0.2.183) — 2026-11-23

### Added

- **Riddim Monster**, **Liquid Glass**, and **Metal Teeth** factory presets, each with a bundled ROT DNA sample.
- In-plugin updates from the public WUBROT Releases page. Downloads are verified and applied after the DAW closes.

### Fixed

- The preset browser recovers if it misses a completion message while loading or switching presets.

### Windows installer

- Branded setup and uninstaller for the Windows x64 VST3. Setup installs Microsoft Edge WebView2 Runtime when needed.
- Updated the credits in **Settings → About**.
