class Ws < Formula
  desc "Workspace CLI for git worktrees with tmux layouts"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-aarch64.tar.gz"
      sha256 "c5c56617fe6312025f0691422e4f118297d5fe84d84f9c06c3d7aa0d7e1fb9e7"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-x86_64.tar.gz"
      sha256 "ff7ff053c62a9571ba4ec846ffb1ab966f17b5a3e788925a5b66b7d612860aad"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-linux-x86_64.tar.gz"
      sha256 "07f105919aad321521db4aa90aa0b8b8ec4fd8262b8ebf9a86266643d3b799cb"
    end
  end

  def install
    bin.install "ws"
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
