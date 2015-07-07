class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.1.tar.gz"
  sha256 "96c728c97759d5f7a15dae32975ce52a06385a1794edb5fc0a6de5193d0fcb04"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
