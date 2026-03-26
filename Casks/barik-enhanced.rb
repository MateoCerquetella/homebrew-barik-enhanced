cask "barik-enhanced" do
  version "1.2.4"
  sha256 "076b79cbd231e33ef751ced4139be2e47d06371bbbe55c3defc7a94f602c2e7e"

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
