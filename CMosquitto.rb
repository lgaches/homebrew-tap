$version = "0.0.2"
$hash = "c2e723da90d3f81caff2ebc00584fc81cd50ed3be350ae673e7917e4173b9c28"

class CMosquitto < Formula
  homepage "https://github.com/lgaches/CMosquitto"
  url "https://github.com/lgaches/CMosquitto/archive/#{$version}.tar.gz"
  sha256 $hash
  version $version

  depends_on "pkg-config" => :run
  depends_on "mosquitto" => :run

  def install
    system "mkdir pkgconfig"
    system "mv macos.pc pkgconfig/mosquitto.pc"
    lib.install "pkgconfig"
  end
end