class Etcdtool < Formula
  version "3.3"
  sha256 "045c292651c72bdcd0b92d9850d1265850770cf0e2284b2e57d439102e307ef6"
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
