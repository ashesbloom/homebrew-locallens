# Contributing to homebrew-locallens

Thank you for your interest in contributing to the Local Lens Homebrew tap!

## How to Contribute

### Reporting Issues

If you encounter problems installing or using the cask:

1. Check if the issue is with the Homebrew cask or the Local Lens app itself
2. For cask-related issues, open an issue in this repository
3. For app-related issues, open an issue in the [LocalLens repository](https://github.com/ashesbloom/LocalLens/issues)

### Updating the Cask

The primary way to contribute is by helping keep the cask up-to-date with new releases:

1. Check the [UPDATING.md](UPDATING.md) guide for detailed instructions
2. Fork this repository
3. Update the `Casks/local-lens.rb` file with the new version and SHA256
4. Test the installation locally if possible
5. Submit a pull request with a clear description of the changes

### Cask Quality Guidelines

When updating or modifying the cask, ensure:

- The version number matches the official release exactly
- The SHA256 checksum is correct (from `checksums-macos.txt` or verified manually)
- The download URL is correct and accessible
- The cask follows [Homebrew's style guide](https://docs.brew.sh/Cask-Cookbook#stanzas)
- All required fields are present: `version`, `sha256`, `url`, `name`, `desc`, `homepage`, `app`

### Testing Changes

Before submitting a PR, test your changes:

```bash
# Tap your fork locally
brew tap ashesbloom/locallens /path/to/your/fork

# Test installation
brew install --cask local-lens

# Verify the app works
open -a "Local Lens"

# Clean up
brew uninstall --cask local-lens
brew untap ashesbloom/locallens
```

### Pull Request Process

1. Ensure your PR description clearly states what version you're updating to
2. Include the source of the SHA256 checksum (release page link)
3. Wait for review and address any feedback
4. Once approved, a maintainer will merge your PR

## Code of Conduct

Please be respectful and constructive in all interactions. This project follows the [Homebrew Code of Conduct](https://github.com/Homebrew/brew/blob/master/CODE_OF_CONDUCT.md).

## Questions?

If you have questions about contributing, feel free to:
- Open an issue for discussion
- Check the [Homebrew documentation](https://docs.brew.sh/)
- Review the [Homebrew Cask Cookbook](https://docs.brew.sh/Cask-Cookbook)

Thank you for contributing! 🍺
