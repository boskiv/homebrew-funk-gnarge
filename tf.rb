class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.8.tar.gz"
  sha256 "f3df7b1e7d251c34e5bab78e90c0dcba19ef03029523f2d0e5ab4763c60cda12"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
