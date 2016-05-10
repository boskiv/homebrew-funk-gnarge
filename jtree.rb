class Jtree < Formula
  version "0.5"
  sha256 "edae2b0aae12cef287e53dc6c31fd33cb2580cc9ed8ebd78567899d6d613bbf7"
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
