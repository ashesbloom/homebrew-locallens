# Updating the Homebrew Cask

This document explains how to update the Local Lens Homebrew cask after each new release.

## Prerequisites

- Access to the LocalLens release page
- The new release should be published on GitHub with the DMG file attached

## Steps to Update

### 1. Get the New Version Information

From the [LocalLens releases page](https://github.com/ashesbloom/LocalLens/releases), note:
- The new version number (e.g., `2.2.0`)
- The DMG file name (e.g., `Local_Lens_v2.2.0_aarch64.dmg`)

### 2. Get the SHA256 Checksum

The SHA256 checksum should be available in the `checksums-macos.txt` file attached to the release.

Alternatively, you can download the DMG and calculate it yourself:
```bash
shasum -a 256 Local_Lens_v2.2.0_aarch64.dmg
```

### 3. Update the Cask File

Edit `Casks/local-lens.rb` and update:

1. **Version number** on line 2:
   ```ruby
   version "2.2.0"
   ```

2. **SHA256 checksum** on line 3:
   ```ruby
   sha256 "28bbd0d8c19b6629168bc4cc8a7aef318693b11eaf312d5500da5417a509367a"
   ```

The URL on line 5 will automatically use the new version number due to string interpolation:
```ruby
url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local_Lens_v#{version}_aarch64.dmg"
```

### 4. Test the Updated Cask (Optional but Recommended)

Before committing, you can test the cask locally:

```bash
# Uninstall the old version if installed
brew uninstall --cask local-lens

# Test installation from your local tap
brew install --cask local-lens

# Verify the app launches correctly
open -a "Local Lens"
```

### 5. Commit and Push

```bash
git add Casks/local-lens.rb
git commit -m "Update local-lens to v2.2.0"
git push origin main
```

## Example Update

If updating from v2.2.0 to v2.3.0:

**Before:**
```ruby
cask "local-lens" do
  version "2.2.0"
  sha256 "28bbd0d8c19b6629168bc4cc8a7aef318693b11eaf312d5500da5417a509367a"
```

**After:**
```ruby
cask "local-lens" do
  version "2.3.0"
  sha256 "new_sha256_checksum_here"
```

## Notes

- The cask file uses string interpolation (`#{version}`), so you only need to update the version number in one place
- Always verify the SHA256 checksum matches the official release
- The `livecheck` block helps Homebrew detect new versions automatically
- Users can update their installation with `brew upgrade --cask local-lens`

## Automation (Future Enhancement)

Consider automating this process with a GitHub Action that:
1. Triggers on new releases in the LocalLens repository
2. Extracts the version and SHA256 from the release
3. Updates the cask file automatically
4. Creates a pull request with the changes
