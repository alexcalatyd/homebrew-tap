cask "stash" do
  version "1.1"
  sha256 "8f3e5a37721fd447ffb5f974f19c2e0851e649a9230450ac4f63542e14c4a66a"

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
