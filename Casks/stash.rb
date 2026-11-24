cask "stash" do
  version "1.2"
  sha256 "fc3e45a776685b314cee4a9a174cb0cf522f53546f6b4c729ab38204ade8ae64"

  url "https://github.com/alexcalatyd/Stash/releases/download/v#{version}/Stash.zip"
  name "Stash"
  desc "Clipboard history for the menu bar"
  homepage "https://github.com/alexcalatyd/Stash"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Stash.app"

  caveats <<~EOS
    Stash isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Stash.app"
  EOS
end
