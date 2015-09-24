class Tf < Formula
  version "0.2.1"
  sha256 "3de03279aad811c1b8ebc6db940c221afa71b8e048dff0139bf440fc840d3e24"
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/#{version}.tar.gz"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/tf"
    var.install ""
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
