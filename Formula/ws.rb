class Ws < Formula
  desc "Workspace CLI for git worktrees with tmux layouts"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-aarch64.tar.gz"
      sha256 "68a766fc06c31b70e0140752c3b3603e547a4450083e42643ace4cf6017cd15e"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-x86_64.tar.gz"
      sha256 "857d68aef41b3a86fb3196573586ccb60357ad6e5dedefc7196f21ab18dab5cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-linux-x86_64.tar.gz"
      sha256 "4cfe08b96576da2d8591668d09cd602047fb1d672de3c83507e7db0d79be75c3"
    end
  end

  def install
    bin.install "ws"
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
