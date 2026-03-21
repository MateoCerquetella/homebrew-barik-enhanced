cask "barik-enhanced" do
  version "1.0.0"
  sha256 "1c653268f17b0fbab5dc010913cd5ec0a5b708195138f2bd184256341a119f9e"

  url "https://github.com/MateoCerquetella/barik-enhanced/releases/download/v#{version}/BarikEnhanced.zip"
  name "Barik Enhanced"
  desc "Custom Menu Bar for macOS with 20+ configurable widgets"
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
