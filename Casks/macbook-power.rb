cask "macbook-power" do
  version "0.1.1"
  sha256 "e92a1fca6c534b4a9d30464ed040801733c30e812f52dac38c26cd22b75334b4"

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
