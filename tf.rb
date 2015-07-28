class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.1.tar.gz"
  sha256 "6af443fbfe3e2b344e3108ab3f0d7d1ecd5b3e1f969293b5b9046c0b07ca4631"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
