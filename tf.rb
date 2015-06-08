class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.4.tar.gz"
  sha256 "8f05ec678e7ec9d382f88e833ea8484d935c19790c11fb5dee151c3be464b67d"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
