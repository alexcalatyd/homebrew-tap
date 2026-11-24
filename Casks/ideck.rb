cask "ideck" do
  version "0.2.0"
  sha256 "8732aee12f9e22e3df6adfdab3e43bae23e6421afb063034bc48f51b3bba8068"

  url "https://github.com/alexcalatyd/iDeck/releases/download/v#{version}/iDeck.zip"
  name "iDeck"
  desc "Control center on your phone: volume, brightness, media and apps"
  homepage "https://github.com/alexcalatyd/iDeck"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "iDeck.app"

  caveats <<~EOS
    iDeck isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/iDeck.app"
  EOS
end
