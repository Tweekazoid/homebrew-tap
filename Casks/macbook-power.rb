cask "macbook-power" do
  version "0.5.0"
  sha256 "a118abe6fc440b5c44806e9553cf855fbb0aaba81bffebe412cab7cfbe1dbe98"

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
