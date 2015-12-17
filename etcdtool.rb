class Etcdtool < Formula
  version "2.7"
  sha256 "7b6f7422fcb60124020cc596bac1baba236027ba2f523e451339b3c3ad66d6aa"
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
