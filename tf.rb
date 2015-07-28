class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.0.3.tar.gz"
  sha256 "d82242e4e524095b92bda6112bb2af0945a81b7eb1aeb8efc1d6c4d0911e0800"

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
