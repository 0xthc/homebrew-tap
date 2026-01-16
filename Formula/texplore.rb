class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "aad4286a110e1b1ff472555114fe10dabeeaa600e34a2b80e7115ca4a9a26357"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "7427c450d1f3ff02020230755d792e82628253dc0b0b1ed5695c6189d6972e2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "6c624bf3b1dd89410597df7173e47429a7480e1010acd7cefd33c96f57e2ee30"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    system "#{bin}/texplore", "--version"
  end
end
