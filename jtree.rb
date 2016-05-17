class Jtree < Formula
  version "0.9.1"
  sha256 "5243a1677ec4a204035712d6ac42a1372ff07a12398ad27e6cad44586411d771"
  homepage "https://github.com/mickep76/jtree"
  url "https://github.com/mickep76/jtree/archive/#{version}.tar.gz"

  depends_on "go" => :build
  depends_on "glide" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "jtree"
  end

  test do
    system "#{bin}/jtree", "--version"
  end
end
