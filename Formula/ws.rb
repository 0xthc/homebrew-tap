class Ws < Formula
  desc "Workspace CLI for git worktrees with tmux layouts"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-aarch64.tar.gz"
      sha256 "5aab0339780ceba4410a42036e3c74ff161f11592ec2bd26e5388ceafb971ec5"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-macos-x86_64.tar.gz"
      sha256 "7e956d8354fa0ef033b02b5c38f744700b463b97bb0bf0e6d64c03b952d4213b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/ws-linux-x86_64.tar.gz"
      sha256 "8e50e8a3f873092157ac7286e5f56dd7a63f1ddb376c92e298c562ab07326e71"
    end
  end

  def install
    bin.install "ws"
  end

  test do
    system "#{bin}/ws", "--version"
  end
end
