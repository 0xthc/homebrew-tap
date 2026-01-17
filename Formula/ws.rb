class Ws < Formula
  desc "Workspace CLI for git worktrees with tmux layouts"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-aarch64.tar.gz"
      sha256 "1db0a2601435df4907165d9b6c98fc589b8610295423baf4e0f7ab46961117de"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-x86_64.tar.gz"
      sha256 "99347146e8a54cfbf0ac4702b3a5ffbd2e530929acf3d6382c5aaf1818a14749"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-linux-x86_64.tar.gz"
      sha256 "97b7c30725b4e16d9f1fb2091df6fc7be22665dd68c776d2a5e8c5512f51a0a5"
    end
  end

  def install
    bin.install "ws"
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
