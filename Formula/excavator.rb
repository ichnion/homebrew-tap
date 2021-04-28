class Excavator < Formula
    desc "Visualize your digital footprint."
    homepage "https://ichnion.github.io/website/"
    version "v0.2.0"
    license "GPL-3.0"

    if OS.mac?
      url "https://github.com/ichnion/excavator/releases/download/#{version}/excavator-macos.tar.gz"
      sha256 'ced73dc5de9af9eccffa2b27485cb3a054f35ddd4471a0c2bf0e100f390a7a44'
    elsif OS.linux?
      url "https://github.com/ichnion/excavator/releases/download/#{version}/excavator-linux.tar.gz"
      sha256 'efdeb14dbca7ca3eb8a53508de541a08120d180e4f3d1e6f9eb4ad94d123fb4f'
    end

    def install
      bin.install 'excavator'
    end

    test do
      system "#{bin}/excavator", '--version'
    end
  end
