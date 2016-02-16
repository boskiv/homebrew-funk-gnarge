class Etcdtool < Formula
  version "3.2"
  sha256 "a4490645150607d200e4670870c9f0a3581fd54665c92de1776e25d207dfaee3"
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
