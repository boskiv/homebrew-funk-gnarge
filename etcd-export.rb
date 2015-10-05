class EtcdExport < Formula
  version "2.3.1"
  sha256 "996c5c91e096702572dbe1f5e21960ef6b03d0b7137890c248f27c4198fe9ba5"
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
    bin.install "bin/etcd-edit"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
    system "#{bin}/etcd-delete", "--version"
    system "#{bin}/etcd-validate", "--version"
    system "#{bin}/etcd-tree", "--version"
    system "#{bin}/etcd-edit", "--version"
  end
end
