class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "26ec389fffbaec80a7d7265edfe29ddb4f489ebb9cc72ab0883d3ee5e5d2aa6b"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "1eed466dbbce800e4877fc307c71f2ea03be3a56d77411b9fdeee98128ab50e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "9052cddda1017391c8d87dfc11571656f680fac8fe3a467b5180b266337ead6a"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    system "#{bin}/texplore", "--version"
  end
end
