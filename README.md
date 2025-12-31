# Homebrew LocalLens

Official Homebrew tap for [LocalLens](https://github.com/ashesbloom/locallens).

## What is LocalLens?

LocalLens is a tool for local development and testing. This tap makes it easy to install and manage LocalLens on macOS and Linux systems using Homebrew.

## Installation

First, tap this repository:

```bash
brew tap ashesbloom/locallens
```

Then install LocalLens:

```bash
brew install local-lens
```

## Usage

After installation, you can use LocalLens directly from your terminal:

```bash
local-lens --help
```

## Updating

To update to the latest version:

```bash
brew update
brew upgrade local-lens
```

## Uninstallation

To uninstall LocalLens:

```bash
brew uninstall local-lens
```

To remove this tap:

```bash
brew untap ashesbloom/locallens
```

## For Maintainers

### Updating the Formula

After each release of LocalLens:

1. The release workflow automatically generates a `local-lens.rb` formula file
2. Download the `local-lens.rb` file from the release assets
3. Copy it to the `Formula/` directory in this repository:
   ```bash
   cp path/to/local-lens.rb Formula/local-lens.rb
   ```
4. Commit and push the changes:
   ```bash
   git add Formula/local-lens.rb
   git commit -m "Update local-lens to version X.Y.Z"
   git push
   ```

The formula file contains all the necessary information for Homebrew to download, verify, and install the correct version of LocalLens.

## Repository Structure

```
homebrew-locallens/
├── Formula/
│   └── local-lens.rb    # Homebrew formula (auto-generated from releases)
└── README.md            # This file
```

## Support

For issues with LocalLens itself, please visit the [main repository](https://github.com/ashesbloom/locallens).

For issues with this Homebrew tap, please [open an issue](https://github.com/ashesbloom/homebrew-locallens/issues).

## License

This tap follows the same license as LocalLens. See the [main repository](https://github.com/ashesbloom/locallens) for details.
