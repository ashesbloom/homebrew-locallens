cask "local-lens" do
  version "2.2.2"
  sha256 "77f272d3db8e84a00f953964c6bb769ec51e6d568a3be7cb19fcd9b4faa0eac4"

  url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local_Lens_v#{version}_aarch64.dmg",
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
