class Jtree < Formula
  version "0.9.2"
  sha256 "79c79af7af3e4d43f45846c5c4367360fa456eb57a595decec81a94b91d02d90"
  homepage "https://github.com/mickep76/jtree"
  url "https://github.com/mickep76/jtree/archive/#{version}.tar.gz"

  depends_on "go" => :build
  depends_on "glide" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "jtree"
  end

  test do
    system "#{bin}/jtree", "--version"
  end
end
