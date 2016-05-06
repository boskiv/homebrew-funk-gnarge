class Jtree < Formula
  version "0.2"
  sha256 "b20eea6e90d499ce1789b3ecb5868edcf7a8b0a734809af2e2d7301b02039f28"
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
