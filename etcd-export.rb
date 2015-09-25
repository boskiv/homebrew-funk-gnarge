class EtcdExport < Formula
  version "1.9"
  sha256 "ff23deaf13a65c0bd0681cfaa5b71d1bf310eca9ac4132a972ca36e0cc676c08"
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
