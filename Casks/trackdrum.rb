cask "trackdrum" do
  version "1.0"
  sha256 "34b0b9e36625cb72585dc6e27457d9581a64ab7bcf8e930e6f9e7c64c6541119"

  url "https://github.com/alexcalatyd/TrackDrum/releases/download/v#{version}/TrackDrum.zip"
  name "TrackDrum"
  desc "Turn the MacBook trackpad into an instrument and loop what you play"
  homepage "https://github.com/alexcalatyd/TrackDrum"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TrackDrum.app"

  caveats <<~EOS
    TrackDrum isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/TrackDrum.app"
  EOS
end
