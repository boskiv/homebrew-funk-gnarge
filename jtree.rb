class Jtree < Formula
  version "0.3"
  sha256 "c762c6daad6a69473300799316240c1b4d373d8a7b0c0f4200f2ba325ca6a458"
  homepage "https://github.com/mickep76/jtree"
  url "https://github.com/mickep76/jtree/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/jtree"
  end

  test do
    system "#{bin}/jtree", "--version"
  end
end
