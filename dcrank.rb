class DCrank < Formula
  version "2.5"
  sha256 "b17f6b9a65959bb4b20112d1c977a8270363e8426ba5dc439fc80c4ec5d09834"
  homepage "https://github.com/mickep76/dcrank"
  url "https://github.com/mickep76/dcrank/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/dcrank"
  end

  test do
    system "#{bin}/dcrank", "--version"
  end
end
