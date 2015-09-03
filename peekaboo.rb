class Peekaboo < Formula
  homepage "https://github.com/mickep76/peekaboo"
  url "https://github.com/mickep76/peekaboo/archive/0.2.1.tar.gz"
  sha256 "3ad8d25fafbbb730509b49bef94be4994d58c4725efd0189eab3cf959e6a3324"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/peekaboo"
    var.install "src/github.com/mickep76/peekaboo/static"
    var.install "src/github.com/mickep76/peekaboo/templates"
  end

  test do
    system "#{bin}/peekaboo", "--version"
  end
end
