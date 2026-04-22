cask "barik-enhanced" do
  version "1.2.9"
  sha256 "4b0a7d4fcd55c85f60096c6506a3358104c7106abf71aca498c5c854901ccf02"

  url "https://github.com/MateoCerquetella/barik-enhanced/releases/download/v#{version}/BarikEnhanced.zip"
  name "Barik Enhanced"
  desc "Custom menu bar with 20+ configurable widgets"
  homepage "https://github.com/MateoCerquetella/barik-enhanced"

  depends_on macos: ">= :sonoma"

  app "Barik.app"

  zap trash: [
    "~/.barik-config.toml",
    "~/.config/barik",
    "~/Library/Preferences/com.mateocerquetella.BarikEnhanced.plist",
  ]

  caveats <<~EOS
    Barik Enhanced is a menu bar replacement app.

    To start:
      open -a Barik

    Right-click the menu bar to configure widgets.
    Enable "Launch at Login" from the gear icon menu.

    Requires a window manager like AeroSpace or yabai for the Spaces widget.
  EOS
end
