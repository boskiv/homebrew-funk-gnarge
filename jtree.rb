class Jtree < Formula
  version "0.1"
  sha256 "3bf2586fb3557c37b62d03e165a17b1b0e4644ab8a3bb07a81622e8e62563c3b"
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
