class Peekaboo < Formula
  homepage "https://github.com/mickep76/peekaboo"
  url "https://github.com/mickep76/peekaboo/archive/0.2.1.tar.gz"
  sha256 "ba448e64186b7fadbbeccc602f6bd667083d9d7a"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    system "./install"
  end

  test do
    system "#{bin}/peekaboo", "--version"
  end
end
