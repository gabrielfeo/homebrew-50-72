class FiftySeventyTwoCli < Formula
  desc "Auto-format git commit messages to the 50/72 rule"
  homepage "https://github.com/gabrielfeo/50-72"
  license "MIT"

  version = "v0.0.1"
  linux_sha = "cfdda76a042c1c5eb30859ed287678385028dc4985276370da762aa44fcd06e1"
  macos_sha = "d92ec5657deb2e795571bc9dfc204107145d4cce2b4167fa3484cbf00febfb45"

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
