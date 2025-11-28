class Mergesub < Formula
  desc "Flexible batch mkvmerge for video/subtitle"
  homepage "https://github.com/madabrm/mergesub"      # Ganti USERNAME sesuai GitHub
  url "https://github.com/madabrm/mergesub/archive/v1.0.1.tar.gz"
  sha256 "2507c43f27232aa359b535a5eafc50322833ef6aa52662fb010148df2fdb512f"
  license "MIT"

  depends_on "mkvtoolnix"

  def install
  	chmod 0755, "mergesub.py"
  	bin.install "mergesub.py"
  	bin.install_symlink "mergesub.py" => "mergesub"
  end


  test do
    system "mergesub", "--help"
  end
end
