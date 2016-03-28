class Peekaboo < Formula
  version "0.5.2"
  sha256 "4b5ffcde556176af53cb2d10788f979a431548a8a7b32b073899cdbcac1dde1d"
  homepage "https://github.com/imc-trading/peekaboo"
  url "https://github.com/imc-trading/peekaboo/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/peekaboo"
    (prefix/"peekaboo").install "static"
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
        <string>daemon</string>
        <string>--debug</string>
        <string>--static</string>
        <string>#{prefix}/peekaboo/static</string>
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
