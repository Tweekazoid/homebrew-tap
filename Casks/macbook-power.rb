cask "macbook-power" do
  version "0.3.0"
  sha256 "4b0d212efcbcb3bacf37f045dc4cf292e9d00364a8c575caf6ab0209b3dfa83c"

  url "https://github.com/Tweekazoid/macbook_power/releases/download/v#{version}/MacBook-Power-#{version}.dmg"
  name "MacBook Power"
  desc "macOS menubar battery monitor with charge speed, ETA, power draw, and CPU/battery temps"
  homepage "https://github.com/Tweekazoid/macbook_power"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "MacBook Power.app"

  zap trash: [
    "~/Library/Application Support/macbook-power",
    "~/Library/LaunchAgents/com.github.tweekazoid.macbook-power.plist",
    "~/Library/Preferences/com.tweekazoid.macbookpower.plist",
  ]
end
