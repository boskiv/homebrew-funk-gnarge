class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.3.tar.gz"
  sha256 "cac4b0e6cbf9b99e87884a9c740756a4ef6c60678da43b863f12a8801538cadf"

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
