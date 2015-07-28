class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.0-1.tar.gz"
  sha256 "b114f003c8051576bbc3df3f55bafa3f53a15a992969445ec3583d0cfef9ae00"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install "./gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
