cask "hecho" do
  version "0.2.0"
  sha256 "c91ea17efcbc9813b6dd6c0dd9eec62486259755fa0af19fea6236ec41c26377"

  url "https://github.com/alexcalatyd/Hecho/releases/download/v#{version}/Hecho.zip"
  name "Hecho"
  desc "Quiet to-do app with groups, priorities and real-time shared spaces"
  homepage "https://github.com/alexcalatyd/Hecho"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Hecho.app"

  caveats <<~EOS
    Hecho isn't notarized by Apple, so macOS blocks it the first time.
    Either open it once from System Settings → Privacy & Security → Open Anyway,
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/Hecho.app"
  EOS
end
