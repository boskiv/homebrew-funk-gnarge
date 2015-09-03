class Peekaboo < Formula
  homepage "https://github.com/mickep76/peekaboo"
  url "https://github.com/mickep76/peekaboo/archive/0.2.tar.gz"
  sha256 "026bc507f059c22ba3689f2a21954af9d8ea833bb6fe2b0b083319eef9f82c64"

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
