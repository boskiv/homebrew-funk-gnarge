class Etcdtool < Formula
  version "3.0"
  sha256 "005a566189f2fd4c80fc0810aecf971506cab10483fb4b6fee5fe6aa6a1e1301"
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
