class Mtv < Formula
  include Language::Python::Shebang

  desc "Markdown Terminal Viewer: read a README in the terminal the way GitHub shows it"
  homepage "https://github.com/alexcalatyd/MTV"
  url "https://github.com/alexcalatyd/MTV/archive/741a7569901a980468b0c2a898cfc3bc4a5c73d3.tar.gz"
  version "0.1.0"
  sha256 "8ced25d9b191848f55fae34493de1b8bd59b999a3ea0db1f63906c148bac1bd7"
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
