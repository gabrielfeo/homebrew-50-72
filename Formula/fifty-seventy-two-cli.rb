class FiftySeventyTwoCli < Formula
  desc "Auto-format git commit messages to the 50/72 rule"
  homepage "https://github.com/gabrielfeo/50-72"
  license "MIT"

  version = "v0.0.1"
  linux_sha = "c632a9c4a1c0566870f247691cd55bb9635d19c90cdfac81ccc3bc99eba43bf2"
  macos_sha = "60257abf24604114ed1bd599960f34805a79a4d534cb52fe5cde3c76b8ac9d83"

  if OS.mac?
    url "https://github.com/gabrielfeo/50-72/releases/download/cli/v0.0.1/50-72-#{version}-macosX64.zip"
    sha256 macos_sha
  elsif OS.linux?
    url "https://github.com/gabrielfeo/50-72/releases/download/cli/v0.0.1/50-72-#{version}-linuxX64.zip"
    sha256 linux_sha
  end

  def install
    bin.install "bin/50-72"
  end

  test do
    assert_includes shell_output("#{bin}/50-72 --help"), "Usage: 50-72"
  end
end
