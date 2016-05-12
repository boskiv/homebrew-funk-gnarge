class Jtree < Formula
  version "0.7.1"
  sha256 "ba2d45d63f501c4aee351296b8048ea52dd2166ae701c7e2946861d9b9741ed8"
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
