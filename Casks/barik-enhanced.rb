cask "barik-enhanced" do
  version "1.3.4"
  sha256 "3e697fe94b79e7b10c99d062a60c3e628c6d44161ea6c911a4a978f66cc480ed"

  url "https://github.com/MateoCerquetella/barik-enhanced/releases/download/v#{version}/BarikEnhanced.zip"
  name "Barik Enhanced"
  desc "Custom menu bar with 20+ configurable widgets"
  homepage "https://github.com/MateoCerquetella/barik-enhanced"

  depends_on macos: ">= :sonoma"

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

    Requires a window manager like AeroSpace or yabai for the Spaces widget.
  EOS
end
