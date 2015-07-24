class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.9-2.tar.gz"
  sha256 "73f45a3f2389422c8b17379567b7e91dcc0b361322243ea357e161da781c48fa"

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
