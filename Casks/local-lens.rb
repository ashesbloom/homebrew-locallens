cask "local-lens" do
  version "2.2.1"
  sha256 "03e11106f0224caa4be8184c555cd61180250328a2a2e76a3d45481c787a60b6"

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
