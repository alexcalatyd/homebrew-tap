cask "backspace" do
  version "1.0.0"
  sha256 "09658df3e5088fbce1bc19b01f88ed453a073cdde6fa74f809b806020d6278a0"

  url "https://github.com/alexcalatyd/Backspace/releases/download/v#{version}/Backspace.zip"
  name "Backspace"
  desc "Real terminal wearing five retro looks"
  homepage "https://github.com/alexcalatyd/Backspace"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Backspace.app"

  caveats <<~EOS
    Backspace isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Backspace.app"
  EOS
end
