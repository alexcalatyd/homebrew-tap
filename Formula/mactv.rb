class Mactv < Formula
  desc "Turn a Mac on your TV into a TV interface, with your phone as the remote"
  homepage "https://github.com/alexcalatyd/MacTV"
  url "https://github.com/alexcalatyd/MacTV/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b61c4410d538ff0903ed02cedc562d018d5c236ba7f80e4d388a341943ab2f1b"
  license "MIT"
  head "https://github.com/alexcalatyd/MacTV.git", branch: "main"

  depends_on :macos
  depends_on "python@3.14"

  def install
    libexec.install "mactv", "mactv.py", "web"
    (bin/"mactv").write_env_script libexec/"mactv",
      PATH: "#{formula_opt_bin("python@3.14")}:$PATH"
  end

  def caveats
    <<~EOS
      Start it with:
        mactv          # opens the interface on the TV
        mactv --no-ui  # only the server and the phone remote
    EOS
  end

  test do
    system formula_opt_bin("python@3.14")/"python3", "-c",
      "import ast; ast.parse(open('#{libexec}/mactv.py').read())"
  end
end
