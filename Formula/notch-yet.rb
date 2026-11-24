class NotchYet < Formula
  desc "Your MacBook's notch tells you when Claude Code is done"
  homepage "https://github.com/alexcalatyd/NotchYet"
  url "https://github.com/alexcalatyd/NotchYet/releases/download/v1.0.0/notch-yet"
  version "1.0.0"
  sha256 "50b7bebfb13ba74e7050fdf169048b3e144ce271d56a020c3f252a46c7d8dcc1"
  license "MIT"

  depends_on :macos

  # A universal binary (Apple Silicon + Intel), ad hoc signed, built by build.sh in the NotchYet repo.
  def install
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
