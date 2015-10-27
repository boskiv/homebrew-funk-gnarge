class EtcdExport < Formula
  version "2.4"
  sha256 "3be0d9191b801f46ab47cc48eea492e1a82aab67bf45585d2e423dca461721a9"
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
    bin.install "bin/etcd-import"
    bin.install "bin/etcd-validate"
    bin.install "bin/etcd-tree"
    bin.install "bin/etcd-edit"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
    system "#{bin}/etcd-validate", "--version"
    system "#{bin}/etcd-tree", "--version"
    system "#{bin}/etcd-edit", "--version"
  end
end
