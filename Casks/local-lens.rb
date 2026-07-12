cask "local-lens" do
  version "2.3.0"
  sha256 "338a9fb0321bb477cce0bf1393c4130d48d6273a771a8f06a89454a3e30362b1"

  url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local.Lens_2.3.0_aarch64.dmg",
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
