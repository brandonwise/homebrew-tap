class Agentwise < Formula
  desc "A fast, offline security scanner for MCP server configurations"
  homepage "https://github.com/brandonwise/agentwise"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.1/agentwise-0.1.1-macos-arm64.tar.gz"
      sha256 "c41b665e5cb3575dc66fc6c5ae6aa56c90782051921430e2ac60564462ee9d9b"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.1/agentwise-0.1.1-macos-amd64.tar.gz"
      sha256 "aca6653dbb1c1b6f0e3415c8ff08f55b9cc2801182b3635b71a4a3538c22867d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.1/agentwise-0.1.1-linux-arm64.tar.gz"
      sha256 "6dc9cdc0142427b1034fc782f890265c15ac561680bb0447d1d4ef91e41df1f8"
    else
      url "https://github.com/brandonwise/agentwise/releases/download/v0.1.1/agentwise-0.1.1-linux-amd64.tar.gz"
      sha256 "50d2c67bb16018cbee6dac8bd00a3800f6880beac7fbfcdf1c3d5e2d657c271c"
    end
  end

  def install
    bin.install "agentwise"
  end

  test do
    assert_match "agentwise", shell_output("#{bin}/agentwise --version")
  end
end
