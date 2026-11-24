class Nocturne < Formula
  desc "Music player for the terminal with spectrum, album art and Spotify"
  homepage "https://github.com/alexcalatyd/Nocturne"
  url "https://github.com/alexcalatyd/Nocturne/archive/dc1a3ed498194a142d4d60c16ddecc78cc29d28b.tar.gz"
  version "1.0.0"
  sha256 "872473913ea362e4543946425900cfb15ec4517b1257a67b8c60cab26681179b"
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
