class EtcdExport < Formula
  version "1.6"
  sha256 "1394a7073c0c4b99a0047e299e03db55560b9f9aaf23037d4914891750fd748a"
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
    bin.install "bin/etcd-import"
    bin.install "bin/etcd-delete"
    bin.install "bin/etcd-validate"
    bin.install "bin/etcd-tree"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
    system "#{bin}/etcd-delete", "--version"
    system "#{bin}/etcd-validate", "--version"
    system "#{bin}/etcd-tree", "--version"
  end
end
