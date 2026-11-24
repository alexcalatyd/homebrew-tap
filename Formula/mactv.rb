class Mactv < Formula
  desc "Turn a Mac on your TV into a TV interface, with your phone as the remote"
  homepage "https://github.com/alexcalatyd/MacTV"
  url "https://github.com/alexcalatyd/MacTV/archive/926945256fde8104b8323631ae12b580cd3de0bb.tar.gz"
  version "1.0.0"
  sha256 "76c8ffde3c7d0c098ca0b4de83cdba8ef14ccc320b237c6c48a54b9c7a182099"
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
