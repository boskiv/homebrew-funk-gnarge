class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.2.tar.gz"
  sha256 "2e6cd58b9f95c4117d6440258d088ebabb6e4d3f16e5162c61b49498660f4f54"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
