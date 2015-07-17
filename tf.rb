class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.6.tar.gz"
  sha256 "c2f99045e96f97443908e94fad38bd13fa6ab4f87027de7b24afaea212f532da"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
