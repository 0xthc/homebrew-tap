class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "59ed75805f1e9126fffb1b7cbe1ace61683beec990016e5e751ac51a3979cd01"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "76d6fab2edf153b939e42d003e495d2d6c8befef1befe2335d2ed988a421dfd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "97823f1719542831f8425fb0cb1d3287a3887c7b67fa8621e5049a25770a1cc6"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    system "#{bin}/texplore", "--version"
  end
end
