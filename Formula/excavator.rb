class Excavator < Formula
    desc "Visualize your digital footprint."
    homepage "https://ichnion.github.io/website/"
    version "v0.1.2"
    license "GPL-3.0"

    if OS.mac?
      url "https://github.com/ichnion/excavator/releases/download/#{version}/excavator-macos.tar.gz"
      sha256 '5b47360304851ac981825e20177822db5e5d2172516e397dc8a2feeb036540f5'
    elsif OS.linux?
      url "https://github.com/ichnion/excavator/releases/download/#{version}/excavator-linux.tar.gz"
      sha256 '3736c4ff9ae8d42bc4861c4d313f5de3c018816b1789bd79f21c89dddb90776d'
    end

    def install
      bin.install 'excavator'
    end

    test do
      system "#{bin}/excavator", '--version'
    end
  end
