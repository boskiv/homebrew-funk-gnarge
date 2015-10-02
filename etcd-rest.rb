class EtcdRest < Formula
  version "0.1"
  sha256 "67f28e21e04a1570781a63a247fce789352beae2889f1d720b2efbec50ef8e0d"
  homepage "https://github.com/mickep76/etcd-rest"
  url "https://github.com/mickep76/etcd-rest/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-rest"
  end

  test do
    system "#{bin}/etcd-rest", "--version"
  end
end
