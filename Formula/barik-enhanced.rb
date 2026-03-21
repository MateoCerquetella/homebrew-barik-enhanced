class BarikEnhanced < Formula
  desc "Custom Menu Bar for macOS with 20+ configurable widgets"
  homepage "https://github.com/MateoCerquetella/barik-enhanced"
  url "https://github.com/MateoCerquetella/barik-enhanced/releases/download/v1.0.0/BarikEnhanced.zip"
  sha256 "1c653268f17b0fbab5dc010913cd5ec0a5b708195138f2bd184256341a119f9e"
  version "1.0.0"

  def install
    app = Pathname.pwd/"Barik.app"
    target = "/Applications/Barik.app"

    system "rm", "-rf", target if File.exist?(target)
    system "cp", "-R", app.to_s, "/Applications/"
  end

  def caveats
    <<~EOS
      Barik Enhanced is a menu bar replacement app.

      To start:
        open -a Barik

      Right-click the menu bar to configure widgets.
      Enable "Launch at Login" from the gear icon menu.

      Requires a window manager like AeroSpace or yabai for the Spaces widget.
    EOS
  end
end
