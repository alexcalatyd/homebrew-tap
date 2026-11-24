class Typingbash < Formula
  include Language::Python::Shebang

  desc "Typing test for the terminal, in the spirit of Monkeytype"
  homepage "https://github.com/alexcalatyd/TypingBash"
  url "https://github.com/alexcalatyd/TypingBash/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "43f6a0aa7d37629cee0bdd9084835b3938b49d2f6425d3e6fd57b1fdcd3df9ba"
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
