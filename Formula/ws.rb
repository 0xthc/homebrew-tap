class Ws < Formula
  desc "Workspace CLI for git worktrees with tmux layouts"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-aarch64.tar.gz"
      sha256 "8b69efacb244a9f790be839153976407da22dc44a2ea8ed9820e0262b7bee4b1"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-x86_64.tar.gz"
      sha256 "105247c0c821937583f695a50ff41bf16fd4400a2b8872639a2959e3a3be7ebf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-linux-x86_64.tar.gz"
      sha256 "38f6feddfe5b08d3329d5599d011e61db1b7ee088a3de5411017fee0c9dcdb33"
    end
  end

  def install
    bin.install "ws"
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
