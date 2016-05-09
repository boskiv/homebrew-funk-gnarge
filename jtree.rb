class Jtree < Formula
  version "0.4"
  sha256 "0ebe039da5e8dc1270d368452d9ec39789867f515d71745724b4fe64c0393999"
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
