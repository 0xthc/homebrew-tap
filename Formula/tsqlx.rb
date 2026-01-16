class Tsqlx < Formula
  desc "A modern, keyboard-first PostgreSQL CLI"
  homepage "https://github.com/0xthc/tsqlx"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/0xthc/tsqlx/releases/download/v#{version}/tsqlx-aarch64-apple-darwin.tar.gz"
      sha256 "333c7c83e4dcbbc7acceec04e07aeb4f98f48d34b6eef7e42173be32a5db6f82"
    else
      url "https://github.com/0xthc/tsqlx/releases/download/v#{version}/tsqlx-x86_64-apple-darwin.tar.gz"
      sha256 "c2d9f003d6c89aa9a8229a3329880ad94b07c202d6dce2e1313e367469c75a3b"
    end
  end

  on_linux do
    url "https://github.com/0xthc/tsqlx/releases/download/v#{version}/tsqlx-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "4ea89db3eadba2f128c264dee18172f4114648faf682e8c9530d3cb480d16fef"
  end

  def install
    bin.install "tsqlx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsqlx --version")
  end
end
