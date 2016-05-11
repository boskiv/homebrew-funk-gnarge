class Jtree < Formula
  version "0.6"
  sha256 "6b237ae959dfa84953de8c3b6427a9647d6f1dffdeae04598503824ac12a12d6"
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
