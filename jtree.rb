class Jtree < Formula
  version "0.8"
  sha256 "d1b26dc62eddb690c044ebc4cafa2e7b94adfc2cdfe3be73f3166e17cd62bfe3"
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
