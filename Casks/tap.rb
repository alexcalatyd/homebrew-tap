cask "tap" do
  version "1.0.0"
  sha256 "9c24241318c0a67bc480b370ab1f2a36bd1419d88cb97e568bed2b4867c35306"

  url "https://github.com/alexcalatyd/Tap/releases/download/v#{version}/Tap.dmg"
  name "Tap"
  desc "Paste a link, get the file: video and audio downloader powered by yt-dlp"
  homepage "https://github.com/alexcalatyd/Tap"

  depends_on arch: :arm64
  depends_on formula: ["ffmpeg", "yt-dlp"]
  depends_on macos: :ventura

  app "Tap.app"

  caveats <<~EOS
    Tap isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Tap.app"
  EOS
end
