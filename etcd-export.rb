class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.5.tar.gz"
  sha256 "97117a9aabbb2c81d9b4c5df3d0970532bd09fe444f449daae90a18a7cbd6997"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
    bin.install "bin/etcd-import"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
  end
end
