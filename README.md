# homebrew-tap

## MacBook Power

Install the MacBook Power menubar app via Homebrew Cask:

```bash
brew tap tweekazoid/tap
brew install --cask macbook-power
```

- [Project homepage and source](https://github.com/Tweekazoid/macbook_power)
- [Latest releases and .dmg downloads](https://github.com/Tweekazoid/macbook_power/releases)

**Features:**
- Live battery percentage, charge speed, ETA, and real system power draw
- Apple Silicon CPU temperature (via smctemp)
- Battery temperature from AppleSmartBattery telemetry
- Configurable menubar display (state, time, power, temps, icons, °C/°F)
- Menu stays open while toggling options

**First launch:**
- After install, open the app from Applications. On first run, you can enable auto-launch at login.
- If you install via Homebrew, Gatekeeper quarantine is automatically cleared (no right-click or xattr needed).

**Uninstall:**
```bash
brew uninstall --cask macbook-power
```

**Cleanup user data:**
```bash
brew zap --cask macbook-power
```

---

This tap is updated automatically after every new release.