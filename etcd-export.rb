class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/1.2.tar.gz"
  sha256 "366d3804fdb8d4a39e55841c76e5f0b5dbb929bc29fa41de374a427e5a9f2c61"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
    bin.install "bin/etcd-import"
    bin.install "bin/etcd-delete"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
    system "#{bin}/etcd-delete", "--version"
  end
end
