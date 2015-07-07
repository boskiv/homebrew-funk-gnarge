class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.3.tar.gz"
  sha256 "cae01f1e2d3f2c6c7cf1b86e0cfc38a09ce35df3a396ee5367af2385d66786ab"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
