class Nocturne < Formula
  desc "Music player for the terminal with spectrum, album art and Spotify"
  homepage "https://github.com/alexcalatyd/Nocturne"
  url "https://github.com/alexcalatyd/Nocturne/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b011ed4adf9d996a5746217a541d0d9ebd4c21c633462a71e61afa4fc0b87b83"
  license "MIT"
  head "https://github.com/alexcalatyd/Nocturne.git", branch: "main"

  depends_on "ffmpeg"
  depends_on "python@3.14"

  def install
    libexec.install "bin", "nocturne"
    (bin/"nocturne").write_env_script libexec/"bin/nocturne",
      PATH: "#{formula_opt_bin("python@3.14")}:$PATH"
  end

  def caveats
    <<~EOS
      For album art, also install chafa:
        brew install chafa
      To play Spotify inside Nocturne you also need librespot.
    EOS
  end

  test do
    assert_match "usage: nocturne", shell_output("#{bin}/nocturne --help")
  end
end
