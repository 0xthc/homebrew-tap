class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "ba3c828de5ecc39a775071cfbfcc48877db1afbab8be944fa036a65a092f0e85"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "2f3d3521c6451757639ba1ea06d563ef0bb863846c333d27af68eb34e7d333e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "dbbf9e82b699881ffe3f78c74d5199a738f2dc6657d1753001b734516fdc4923"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    system "#{bin}/texplore", "--version"
  end
end
