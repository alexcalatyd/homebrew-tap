class NotchYet < Formula
  desc "Your MacBook's notch tells you when Claude Code is done"
  homepage "https://github.com/alexcalatyd/NotchYet"
  url "https://github.com/alexcalatyd/NotchYet/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7557c765be37eb9be03a5b882402414f3def3d994c1669c20379663eeff260a2"
  license "MIT"

  depends_on :macos

  def install
    system "swiftc", "-O", "-swift-version", "5", "-o", "notch-yet", "Sources/main.swift"
    bin.install "notch-yet"
  end

  def caveats
    <<~EOS
      Add the Claude Code hooks with:
        notch-yet install-hooks
      (Using the Claude Code plugin instead? Then you don't need this formula.)
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/notch-yet --version")
  end
end
