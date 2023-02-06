require "formula"
require_relative "../custom_download_strategy.rb"
class Mytool < Formula
  homepage "https://www.sigscalr.io/index.html#getting-started/"
  url "https://sigscalr-releases.s3.amazonaws.com/sigscalr-1.1.12-darwin-arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy 
  sha256 "52126be8cf1bddd7536886e74c053ad7d0ed2aa89b4b630f76785bac21695fcd"
  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
  test do
      system "#{bin}/wget --help"
  end
end
