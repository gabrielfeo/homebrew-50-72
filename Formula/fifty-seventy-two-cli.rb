class FiftySeventyTwoCli < Formula
  desc "Auto-format git commit messages to the 50/72 rule"
  homepage "https://github.com/gabrielfeo/50-72"
  license "MIT"

  version = "v0.0.1"
  linux_sha = "b2c2be2d130273eaf08dcc7f1460e9264a1449b7335635210b33071d9565ca5e"
  macos_sha = "c44fae9e567b3d880cb0cac66228d080f8cf8bfa7af38bfdf5edf91e9e379231"

  if OS.mac?
    url "https://github.com/gabrielfeo/50-72/releases/download/v0.0.1/50-72-#{version}-macosX64.zip"
    sha256 macos_sha
  elsif OS.linux?
    url "https://github.com/gabrielfeo/50-72/releases/download/v0.0.1/50-72-#{version}-linuxX64.zip"
    sha256 linux_sha
  end

  def install
    bin.install "bin/50-72"
  end

  test do
    assert_includes shell_output("#{bin}/50-72 --help"), "Usage: 50-72"
  end
end
