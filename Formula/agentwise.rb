class Agentwise < Formula
  desc "A fast, offline security scanner for MCP server configurations"
  homepage "https://github.com/brandonwise/agentwise"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.0/agentwise-0.1.0-macos-arm64.tar.gz"
      sha256 "6d8b4c8362bf5e1c1805340a0955a9e0d10ba87dc8fa72b45b4a3af67f15b6a2"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.0/agentwise-0.1.0-macos-amd64.tar.gz"
      sha256 "a002fd0f3095d2decc77086f5984259cb1bbdb185ea819f465d4d5771c460b94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.0/agentwise-0.1.0-linux-arm64.tar.gz"
      sha256 "7a6c1cea0b8490cc1eb1c80f081bbdf882228b7b79c7fc197eb1b167b6f832e2"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.0/agentwise-0.1.0-linux-amd64.tar.gz"
      sha256 "077133d59c5d2d6b48a7eafbf70971a4070f887e0903773b784689a2b72991bf"
    end
  end

  def install
    bin.install "agentwise"
  end

  test do
    assert_match "agentwise", shell_output("#{bin}/agentwise --version")
  end
end
