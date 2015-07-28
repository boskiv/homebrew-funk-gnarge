class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/2.0.2.tar.gz"
  sha256 "ac45d05efb14d47d0c0b7d86192af89fd9818efe5f4cac92cfa706f8869f5aa6"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install "./gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--version"
  end
end
