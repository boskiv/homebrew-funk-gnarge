class EtcdExport < Formula
  version "2.0"
  sha256 "027462bf5a8fbf156d0a62d18ebffcf17d9fcd58886088edaeab32463a8b2eda"
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
