cask "local-lens" do
  version "2.4.1"
  sha256 "5fd6bf02212d9d706c56d35181f2f49506e14e5d042ad562770abdcec3b71dad"

  url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local Lens_2.4.1_aarch64.dmg",
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
