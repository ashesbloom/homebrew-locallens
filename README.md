# homebrew-locallens

[![Validate Cask](https://github.com/ashesbloom/homebrew-locallens/actions/workflows/validate-cask.yml/badge.svg)](https://github.com/ashesbloom/homebrew-locallens/actions/workflows/validate-cask.yml)

Homebrew tap for [Local Lens](https://github.com/ashesbloom/LocalLens) - a privacy-first, AI-powered photo organizer.

## Installation

To install Local Lens using this tap:

```bash
brew tap ashesbloom/locallens
brew install --cask local-lens
```

Or install directly in one command:

```bash
brew install --cask ashesbloom/locallens/local-lens
```

## Updating

To update Local Lens to the latest version:

```bash
brew upgrade --cask local-lens
```

## Uninstallation

To uninstall Local Lens:

```bash
brew uninstall --cask local-lens
```

To completely remove all Local Lens data:

```bash
brew uninstall --zap --cask local-lens
```

## About

This tap provides the Homebrew Cask for Local Lens, allowing macOS users (Apple Silicon) to easily install and manage Local Lens using Homebrew.

**Local Lens** is a privacy-first, AI-powered photo organizer that sorts and groups photos by faces, dates, and locations—all locally, with no cloud upload. It features:

- 🔒 Privacy-first: All processing happens locally on your device
- 🤖 AI-powered face recognition and categorization
- 📅 Automatic organization by date and location
- 🖼️ Support for various image formats including RAW
- 🍎 Native Apple Silicon support

## Requirements

- macOS with Apple Silicon (M1/M2/M3/M4)
- Homebrew installed

## Updating the Cask

For maintainers: After each release of Local Lens, the `local-lens.rb` cask file should be updated with:
- The new version number
- The updated SHA256 checksum of the DMG file

See [UPDATING.md](UPDATING.md) for detailed instructions.

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## Links

- [Local Lens Repository](https://github.com/ashesbloom/LocalLens)
- [Local Lens Releases](https://github.com/ashesbloom/LocalLens/releases)
- [Homebrew Documentation](https://docs.brew.sh/)
- [Homebrew Cask Documentation](https://docs.brew.sh/Cask-Cookbook)

## License

This tap repository follows the same license as Homebrew. The Local Lens application has its own license - see the [LocalLens repository](https://github.com/ashesbloom/LocalLens) for details.

