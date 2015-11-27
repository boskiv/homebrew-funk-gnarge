class EtcdTool < Formula
  version "2.6"
  sha256 "dfc0c5fee9b20b75bba0f8e051395abf7e3cb61d126dd0df1658a57329543adc"
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
