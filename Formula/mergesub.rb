class Mergesub < Formula
  desc "Flexible batch mkvmerge for video/subtitle"
  homepage "https://github.com/madabrm/mergesub"      # Ganti USERNAME sesuai GitHub
  url "https://github.com/madabrm/mergesub/archive/v1.0.0.tar.gz"
  sha256 "f35be3edc07441d89ea9d7ac069eb8619a2706e6cfe5e71db35064fa8e7a333f"
  license "MIT"

  depends_on "python@3.11"
  depends_on "mkvtoolnix"

  def install
    bin.install "mergesub.py"
    # buat symlink mergesub agar bisa dijalankan langsung
    (bin/"mergesub").write <<~EOS
      #!/bin/bash
      python3 #{libexec}/mergesub.py "$@"
    EOS
  end

  test do
    system "mergesub", "--help"
  end
end
