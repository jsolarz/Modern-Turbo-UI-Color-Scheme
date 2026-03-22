# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- **CI**: JSON validation now accepts JSONC (`//` and `/* */` comments) via `commentjson`, matching VS Code theme files and fixing strict `json.tool` failures on commented themes.
- **Borland Turbo Pascal Original (VS Code)**: Filled all empty workbench, semantic, and TextMate color entries with the Turbo palette; improved contrast for the title bar, menu bar, dropdown menus (`menu.*`), command center, and overlays versus the sidebar (`#808080`); aligned welcome-page tiles and peek view with the same blue/gray system.
- **Borland Turbo Pascal Original (VS Code)**: Split main chrome into distinct darker grays — activity bar (`#454545`), file-explorer sidebar (`#5c5c5c` + section headers `#505050`), bottom panel / debug console (`#4e4e4e`); darkened tab row, status bar, title bar, and form controls so less uniform bright gray.
- **Borland Turbo Pascal Original (VS Code)**: Darkened primary UI blues one step (former `#0000CC`→`#000096`, `#0000AA`→`#000088`, `#000088`→`#000066`) and muted blue-violet accents (`#5555AA*`→`#4848a0*`, etc.) for a slightly softer screen.

### Added
- Initial release with Nord Turbo Pascal Modern theme
- Initial release with Borland Turbo Pascal Original theme
- VS Code extension support
- JetBrains IDE theme support (.icls)
- Visual Studio theme support (.vssettings)
- Vim color scheme support
- Sublime Text theme support (.tmTheme)
- Atom editor theme support
- Emacs theme support
- Linux terminal theme support (shell scripts and Xresources)
- Windows Terminal theme support
- Comprehensive README with installation instructions
- Test files for theme validation

## [0.1.0] - 2024-12-01

### Added
- Initial theme collection
- Support for 8 IDEs and 2 terminal types
- Documentation and contribution guidelines

[Unreleased]: https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/jsolarz/Modern-Turbo-UI-Color-Scheme/releases/tag/v0.1.0
