class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.6.tar.gz"
  sha256 "4c7673e7d061894cdac9bff06812450d24aab537e960126a48ffd3a0d45bdec4"

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
