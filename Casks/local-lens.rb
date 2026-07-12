cask "local-lens" do
  version "2.4.1"
  sha256 "175350dfa1ccaed1333fe62dd5dc1ec01763af3d097278fc8b849f0c34c29998"

  url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local.Lens_#{version}_aarch64.dmg",
      verified: "github.com/ashesbloom/LocalLens/"
  name "Local Lens"
  desc "AI-powered offline photo organizer with face recognition"
  homepage "https://github.com/ashesbloom/LocalLens"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64

  app "Local Lens.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Local Lens.app"],
                   sudo: false
  end

  zap trash: [
    "~/.config/LocalLens",
  ]

  caveats <<~EOS
    Local Lens is not notarized by Apple.
    If you see a security warning, right-click the app → Open → Click "Open"
  EOS
end
