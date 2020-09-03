# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "A text file analysis tool that detects non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.1.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/get-woke/woke/releases/download/v0.1.5/woke-0.1.5-darwin-amd64.tar.gz"
    sha256 "9821b3c1e40ed42c56571cd3e050a3c94e45994705858b06210ee4b49029418c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.1.5/woke-0.1.5-linux-amd64.tar.gz"
      sha256 "2145156b111d366c35bcc83cea2970b891c65961754a4de6a741559fc0dc354b"
    end
  end

  def install
    bin.install "woke"
  end

  test do
    system "#{bin}/woke --version"
  end
end
