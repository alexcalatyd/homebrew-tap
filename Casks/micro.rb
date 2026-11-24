cask "micro" do
  version "0.4"
  sha256 "5f06527eee77d0e3532e4fd9beb33bc76b9b6fc2150b2f265b1bc220e1ed5b82"

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
