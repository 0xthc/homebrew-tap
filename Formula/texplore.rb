class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "a1808fca65f6fcf398d602950e7ace449b3ea329d47bb50586f2948dd28cb424"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "8c2b0edd9e3b10791ce4c4a250d00720c7daec041c1e28fac8690c09ca182bd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "a7de9608cd6d9c9a17abad8f097b6507c909e89f963b055b0c8b7984fdae7981"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    system "#{bin}/texplore", "--version"
  end
end
