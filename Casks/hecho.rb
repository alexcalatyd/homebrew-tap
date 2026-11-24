cask "hecho" do
  version "0.1.0"
  sha256 "414929d1240cdaac09128ded78ed4d6d74db4d2ee2f3da4f5979dceac8f267a9"

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
