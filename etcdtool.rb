class Etcdtool < Formula
  version "2.8"
  sha256 "7b0bd76aec33d6d735b7962e783cfa3da0913a7e6daf2d14ad04c3cd50d6cb50"
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
