class Agentwise < Formula
  desc "A fast, offline security scanner for MCP server configurations"
  homepage "https://github.com/brandonwise/agentwise"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.3/agentwise-0.1.3-macos-arm64.tar.gz"
      sha256 "c9455e89788ead546992a031dcdfcd10418cce2a9dd896ccb315ff7d04be9771"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.3/agentwise-0.1.3-macos-amd64.tar.gz"
      sha256 "f9857e2fe65820d40dee939757a9476dcbcb055e936aa2fdfc754f788923b5bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.3/agentwise-0.1.3-linux-arm64.tar.gz"
      sha256 "c928236c7e470c861944cee9f2aca1880f631b097d93fe48c6488b1b889b0e14"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.3/agentwise-0.1.3-linux-amd64.tar.gz"
      sha256 "857022e150b7526d9ca16da9888c6ddbe063e39e43c69f5f14285893abeba649"
    end
  end

  def install
    bin.install "agentwise"
  end

  test do
    assert_match "agentwise", shell_output("#{bin}/agentwise --version")
  end
end
