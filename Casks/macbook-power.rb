cask "macbook-power" do
  version "0.4.0"
  sha256 "9f89a9225da5a53dd25ecf44c8306ccaeed9493168ceffceb36bd0fb8748b7be"

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
