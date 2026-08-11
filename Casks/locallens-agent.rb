cask "locallens-agent" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.33"

  on_arm do
    sha256 "a9c74a07ba560ab3f3929010fa841e3739a8ed5cf8a97faab6cf8a84db667ae3"
    url "https://github.com/ashesbloom/locallens_mcp_agent/releases/download/v#{version}/locallens-agent-v#{version}-macos-arm64.dmg",
        verified: "github.com/ashesbloom/locallens_mcp_agent/"
  end

  on_intel do
    sha256 "a9c74a07ba560ab3f3929010fa841e3739a8ed5cf8a97faab6cf8a84db667ae3"
    url "https://github.com/ashesbloom/locallens_mcp_agent/releases/download/v#{version}/locallens-agent-v#{version}-macos-x86_64.dmg",
        verified: "github.com/ashesbloom/locallens_mcp_agent/"
  end

  name "LocalLens Agent"
  desc "macOS tray agent for LocalLens — connects Claude Desktop to your photo library"
  homepage "https://github.com/ashesbloom/locallens_mcp_agent"

  depends_on macos: ">= :monterey"

  app "LocalLens Agent.app"

  # Strip the Gatekeeper quarantine flag that macOS sets on downloaded files.
  # This is required because the app is ad-hoc signed but not Apple-notarized.
  # Homebrew runs this after copying the .app to /Applications.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/LocalLens Agent.app"],
                   sudo: false
  end

  zap trash: [
    "~/.config/LocalLens/mcp_license.json",
    "~/Library/Logs/LocalLensAgent",
  ]

  caveats <<~EOS
    LocalLens Agent is ad-hoc signed but not Apple-notarized.
    Homebrew has automatically removed the quarantine flag, so the app
    should open without a Gatekeeper warning.

    If you still see "Apple could not verify...", run:
      xattr -cr "/Applications/LocalLens Agent.app"

    To connect Claude Desktop, open the tray menu → "Connect to Claude Desktop".
  EOS
end
