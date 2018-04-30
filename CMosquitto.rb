$version = "0.0.2"
$hash = "c30812bb758cebf1d3e28f5294ac30253e5895385c72f889fb5eaf3587dfde67"

class Cmosquitto < Formula
  homepage "https://github.com/lgaches/CMosquitto"
  url "https://github.com/lgaches/CMosquitto/archive/#{$version}.tar.gz"
  sha256 $hash
  version $version

  depends_on "pkg-config"
  depends_on "mosquitto"

  def install
    system "mkdir pkgconfig"
    system "mv macos.pc pkgconfig/mosquitto.pc"
    lib.install "pkgconfig"
  end
end
