class Etcdtool < Formula
  version "2.9"
  sha256 "5292062b940bf86ccb5be9315bd0d4ee16ad083252acb7b67234698eedc9e25f"
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
