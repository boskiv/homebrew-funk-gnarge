class Etcdtool < Formula
  version "3.3.2"
  sha256 "e3e6964e33e4cade95303b642f5b160225e61eac1fe754da606983a4c0edf06e"
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
