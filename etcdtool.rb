class Etcdtool < Formula
  version "3.3.2"
  sha256 "f9f4aea1e1459e1f187e8f74faec537b97cb2519bdead9f12e4c1bf93a69df6b"
  homepage "https://github.com/mickep76/etcdtool"
  url "https://github.com/mickep76/etcdtool/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcdtool"
  end

  test do
    system "#{bin}/etcdtool", "--version"
  end
end
