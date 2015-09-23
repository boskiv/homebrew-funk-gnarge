class EtcdExport < Formula
  homepage "https://github.com/mickep76/etcd-export"
  url "https://github.com/mickep76/etcd-export/archive/1.4.tar.gz"
  sha256 "b784f9aa3db6efd11d826f20dab6cac95eece6821638b0f3edd9b14d5f6bde46"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    system "./build"
    bin.install "bin/etcd-export"
    bin.install "bin/etcd-import"
    bin.install "bin/etcd-delete"
    bin.install "bin/etcd-validate"
  end

  test do
    system "#{bin}/etcd-export", "--version"
    system "#{bin}/etcd-import", "--version"
    system "#{bin}/etcd-delete", "--version"
    system "#{bin}/etcd-validate", "--version"
  end
end
