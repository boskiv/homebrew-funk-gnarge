class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.3.tar.gz"
  sha256 "ee3ca4c565d39dba51ae21cc8d06b33efee9fe34055581839df32d8e8f1bc1eb"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
