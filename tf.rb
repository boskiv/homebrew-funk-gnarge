class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.9.tar.gz"
  sha256 "9e9c22fb62c269d547fc17eb595db5cd60ef4b70bcd18c55c1132e20225ed215"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
