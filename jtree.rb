class Jtree < Formula
  version "0.7"
  sha256 "4936d53b19973797cb48fe83914674bc62c3c80c09d93bc23cd35656ab1e2751"
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
