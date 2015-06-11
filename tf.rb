class Tf < Formula
  homepage "https://github.com/mickep76/tf"
  url "https://github.com/mickep76/tf/archive/0.8.1.tar.gz"
  sha256 "2fe797e90f797d2bce13b94646e3289a85de51bd2f6ce50c3ee1cea007f10e9e"

  depends_on "go" => :build

  def install
    system "./gobuild.sh"
    bin.install ".gobuild/bin/tf" => "tf"
  end

  test do
    system "#{bin}/tf", "--help"
  end
end
