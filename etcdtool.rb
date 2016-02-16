class Etcdtool < Formula
  version "3.1"
  sha256 "c111c82f3a6f2cc80795be36ef4362084098974b3b31710e9f12f0b4d05781ad"
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
