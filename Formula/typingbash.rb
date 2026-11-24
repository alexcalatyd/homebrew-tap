class Typingbash < Formula
  include Language::Python::Shebang

  desc "Typing test for the terminal, in the spirit of Monkeytype"
  homepage "https://github.com/alexcalatyd/TypingBash"
  url "https://github.com/alexcalatyd/TypingBash/archive/c0c3fb2255c5a73039016e5fc2ad261acaba705e.tar.gz"
  version "1.0.0"
  sha256 "69a998d8b11027dd8cef4c049b6c47819a104dfe63be8d957c58aa24e08f12ab"
  license "MIT"
  head "https://github.com/alexcalatyd/TypingBash.git", branch: "main"

  depends_on "python@3.14"

  def install
    libexec.install "typingbash", "src", "data"
    rewrite_shebang detected_python_shebang, libexec/"typingbash"
    bin.write_exec_script libexec/"typingbash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/typingbash --version")
  end
end
