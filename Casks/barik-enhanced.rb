cask "barik-enhanced" do
<<<<<<< HEAD
  version "1.8.4"
  sha256 "696dd0fe8ffe2c7b1723663e23d65efe597064f1e6d3dd63adcd85a291e24e7a"
=======
  version "1.8.4"
  sha256 "696dd0fe8ffe2c7b1723663e23d65efe597064f1e6d3dd63adcd85a291e24e7a"
>>>>>>> e764ff0 (bump cask to 1.8.4)

  url "https://github.com/MateoCerquetella/barik-enhanced/releases/download/v#{version}/BarikEnhanced.zip"
  name "Barik Enhanced"
  desc "Custom menu bar with 20+ configurable widgets"
  homepage "https://github.com/MateoCerquetella/barik-enhanced"

  depends_on macos: :sonoma

  app "BarikEnhanced.app"

  zap trash: [
    "~/.barik-config.toml",
    "~/.config/barik",
    "~/Library/Preferences/com.mateocerquetella.BarikEnhanced.plist",
  ]

  caveats <<~EOS
    Barik Enhanced is a menu bar replacement app.

    To start:
      open -a "Barik Enhanced"

    Right-click the menu bar to configure widgets.
    Enable "Launch at Login" from the gear icon menu.

    This build is not Apple-notarized. If macOS blocks the first launch,
    Control-click BarikEnhanced.app in Applications and choose Open.

    Requires a window manager like AeroSpace or yabai for the Spaces widget.
  EOS
end
