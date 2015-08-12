class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/0.3-1.tar.gz"
  sha256 "81fe8d244b0400ff85b3e2de60c206b4a3092a4ecd51342f8e5a288c6e808e02"

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
