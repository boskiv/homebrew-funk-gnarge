class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.5.tar.gz"
  sha256 "95f55026f1cd19526387859bd3e69aa5fb44ab518156b465400d386198228d4f"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
