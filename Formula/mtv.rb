class Mtv < Formula
  include Language::Python::Shebang

  desc "Markdown Terminal Viewer: read a README in the terminal the way GitHub shows it"
  homepage "https://github.com/alexcalatyd/MTV"
  url "https://github.com/alexcalatyd/MTV/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5ae9a92e39497f2dd09dec92525d10013d272672c712380659e6b6bb956897a9"
  license "MIT"
  head "https://github.com/alexcalatyd/MTV.git", branch: "main"

  depends_on "python@3.14"

  def install
    rewrite_shebang detected_python_shebang, "mtv"
    bin.install "mtv"
  end

  def caveats
    <<~EOS
      For images, big headings, crisp SVG and highlighted code, also install:
        brew install chafa imagemagick librsvg bat
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mtv --version")
  end
end
