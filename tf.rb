class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.1.1.tar.gz"
  sha256 "c9e6f021f135555e89b2da25f2c5b3a8ec77e3eaa48ebbb8a95091729e485711"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
