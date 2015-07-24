class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/1.9.2.tar.gz"
  sha256 "8b53886475d553738cc40639c631fd0ab55c934776952062b25330d6be08e3cc"

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
