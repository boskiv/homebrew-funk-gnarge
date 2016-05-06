class Jtree < Formula
  version "0.3-1"
  sha256 "36ee12a26cf99b20c3332dbaef0cb83cdc1656ea66b0518f266e3772d1cb56a2"
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
