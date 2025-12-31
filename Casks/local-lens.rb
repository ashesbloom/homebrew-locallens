cask "local-lens" do
  version "2.2.0"
  sha256 "28bbd0d8c19b6629168bc4cc8a7aef318693b11eaf312d5500da5417a509367a"

  url "https://github.com/ashesbloom/LocalLens/releases/download/v#{version}/Local_Lens_v#{version}_aarch64.dmg"
  name "Local Lens"
  desc "Privacy-first, AI-powered photo organizer for your PC"
  homepage "https://github.com/ashesbloom/LocalLens"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Local Lens.app"

  zap trash: [
    "~/Library/Application Support/Local Lens",
    "~/Library/Caches/Local Lens",
    "~/Library/Preferences/com.locallens.app.plist",
    "~/Library/Saved Application State/com.locallens.app.savedState",
  ]
end
