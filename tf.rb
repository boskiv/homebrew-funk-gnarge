class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.7.tar.gz"
  sha256 "61b3b6ba1c96318f3324fab1d073b7d6c8117abd73f36b19522a65980fc67761"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
