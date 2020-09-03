# This file was generated by GoReleaser. DO NOT EDIT.
class Woke < Formula
  desc "A text file analysis tool that detects non-inclusive language in your source code."
  homepage "https://getwoke.tech"
  version "0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/get-woke/woke/releases/download/v0.1.6/woke-0.1.6-darwin-amd64.tar.gz"
    sha256 "6ce2da303dbf66336f71db96a2094d735db03f23e7a4fd389fb67e3b15181088"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/get-woke/woke/releases/download/v0.1.6/woke-0.1.6-linux-amd64.tar.gz"
      sha256 "397dd6533a2affce9aafad60ed1dc55221618d3184ccf1f4d20c3e2167399772"
    end
  end

  def install
    bin.install "woke"
  end

  test do
    system "#{bin}/woke --version"
  end
end
