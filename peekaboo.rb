class Peekaboo < Formula
  version "0.2.3"
  sha256 "c9e2f304122ce66440c9bb9b0116374d269bc1813c2d3471c96cf1424f55cfcb"
  homepage "https://github.com/imc-trading/peekaboo"
  url "https://github.com/imc-trading/peekaboo/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/peekaboo"
    (prefix/"peekaboo").install "src/github.com/imc-trading/peekaboo/static", "src/github.com/imc-trading/peekaboo/templates"
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/peekaboo</string>
        <string>--static-dir</string>
        <string>#{prefix}/peekaboo/static</string>
        <string>--template-dir</string>
        <string>#{prefix}/peekaboo/templates</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
    </dict>
    </plist>
    EOS
  end

  test do
    system "#{bin}/peekaboo", "--version"
  end
end
