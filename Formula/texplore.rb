class Texplore < Formula
  desc "Terminal file explorer with git integration"
  homepage "https://github.com/0xthc/ws-tools"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-aarch64.tar.gz"
      sha256 "ec1d4d2d865792951b3443eb3c6c7510a9782e1b280bdd1675d3a4c2c149f759"
    end
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-macos-x86_64.tar.gz"
      sha256 "5d43ac58594fefb9cab574040b6fe810e6da7a444573e919c26a668a72002eae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/0xthc/ws-tools/releases/download/v#{version}/texplore-linux-x86_64.tar.gz"
      sha256 "e72386eb4263a8474ce75bf66a64d1e43811522b862fd843bd400d534552fef3"
    end
  end

  def install
    bin.install "texplore"
  end

  test do
    assert_predicate bin/"texplore", :executable?
  end
end
