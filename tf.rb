class Tf < Formula
  version "2.3"
  sha256 "6efef2c1f3a0ad4b19887eb0450dc6bf9bdb9170c3c2d04f271ceffdb7f35629"
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/tf"
    var.install ""
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
