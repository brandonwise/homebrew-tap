class Agentwise < Formula
  desc "A fast, offline security scanner for MCP server configurations"
  homepage "https://github.com/brandonwise/agentwise"
  version "0.1.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.2/agentwise-0.1.2-macos-arm64.tar.gz"
      sha256 "d4b0e690e9ee9471e7267e286ec8b2d9287cd134ddf53ab240283c8bdc18ee67"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.2/agentwise-0.1.2-macos-amd64.tar.gz"
      sha256 "c81dfc8eec3317c40e607c10b4e4fa538d8cf788c1cf1136e3571622ab027a6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.2/agentwise-0.1.2-linux-arm64.tar.gz"
      sha256 "a51befa9ced5323a368249a8525fe615d0ae3d7d2e1753b495b00392af7b8216"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.2/agentwise-0.1.2-linux-amd64.tar.gz"
      sha256 "769baf812854576da6159c403b6644dac3d333df0da69ad305cb100eeb584840"
    end
  end

  def install
    bin.install "agentwise"
  end

  test do
    assert_match "agentwise", shell_output("#{bin}/agentwise --version")
  end
end
