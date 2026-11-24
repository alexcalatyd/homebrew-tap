cask "micro" do
  version "0.3"
  sha256 "d3276a21a4c809a112a86ca5a8ef6fc7696c694c183bfc7521cc114be7a63a37"

  url "https://github.com/alexcalatyd/Micro/releases/download/v#{version}/Micro.dmg"
  name "Micro"
  desc "Tiny floating player that lives in the menu bar"
  homepage "https://github.com/alexcalatyd/Micro"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Micro.app"

  caveats <<~EOS
    Micro isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Micro.app"
  EOS
end
