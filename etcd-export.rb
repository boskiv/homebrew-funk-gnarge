class Tf < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.1.tar.gz"
  sha256 "6ee2ee2342364691cc2d6d079357236b04e8258780e997540d3d3ec0c5fa2321"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
  end

  test do
    system "#{bin}/etcd-export", "--version"
  end
end
