class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.2.tar.gz"
  sha256 "195c65effcb9a68b8b598a9c19fff59b7abb6fd1a293db7f1fb10e07ee8a4035"

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
