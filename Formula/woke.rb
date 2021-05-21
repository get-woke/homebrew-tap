# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "Detect non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.8.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/get-woke/woke/releases/download/v0.8.1/woke-0.8.1-darwin-amd64.tar.gz"
    sha256 "cbf04533af2b3d4e6fabd17debbcfb2bf6342baae0d80b2adc9b84fd3902d90b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/get-woke/woke/releases/download/v0.8.1/woke-0.8.1-linux-amd64.tar.gz"
    sha256 "57773a297ebbf8c5008a5230f681d2574329d48dbe43c4968e1107fa0fb803cf"
  end

  def install
    bin.install "woke"
  end

  test do
    system "#{bin}/woke --version"
  end
end
