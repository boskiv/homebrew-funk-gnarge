class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.0.tar.gz"
  sha256 "3284f02ad08f92a550073b724720eaac3eafc897752f1eebed5406fc56673b07"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
