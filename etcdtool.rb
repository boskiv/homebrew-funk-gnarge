class Etcdtool < Formula
  version "3.3.1"
  sha256 "7586718edce3e0b737ca6a465c65f7ad4e9439b8c67129786d5b899d3f826bfb"
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
