class Createicns < Formula
  desc "Convert PNG files to macOS .icns using sips and iconutil"
  homepage "https://github.com/madabrm/createicns"
  url "https://github.com/madabrm/createicns/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "aec04721c1a17903385ab796127aa477aac82fef4d816423b6c7e8e0bd27349a"
  license "MIT"

  def install
    bin.install "createicns"
  end

  test do
    # basic help test — should run without errors
    system "#{bin}/createicns", "-h"
  end
end

