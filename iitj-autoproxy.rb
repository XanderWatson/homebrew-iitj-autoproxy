# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IitjAutoproxy < Formula
  desc "A CLI tool to automatically login to IIT Jodhpur's network firewall."
  homepage "https://github.com/XanderWatson/iitj-autoproxy"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/XanderWatson/iitj-autoproxy/releases/download/v0.1.2/iitj-autoproxy_0.1.2_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "ebfb8775e5a51e156c5a6e7400071d7ed64629e3e969c12e52de93b2a0ad17d8"

      def install
        bin.install "bin/autoproxy"
        bin.install "bin/autoproxyd"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/XanderWatson/iitj-autoproxy/releases/download/v0.1.2/iitj-autoproxy_0.1.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "54530748acc0e10532b67cd6c361aa1e56979b27f6587ce49c8ef3554ac9772e"

      def install
        bin.install "bin/autoproxy"
        bin.install "bin/autoproxyd"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/XanderWatson/iitj-autoproxy/releases/download/v0.1.2/iitj-autoproxy_0.1.2_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "b6e5c4c366c54cb5aac9fc588356fee423154250e48703aaa08460c6ed9e6f76"

      def install
        bin.install "bin/autoproxy"
        bin.install "bin/autoproxyd"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/XanderWatson/iitj-autoproxy/releases/download/v0.1.2/iitj-autoproxy_0.1.2_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "f8e77d03f201cf3cbf1c3b2b2fe6623b251f162ef0f40274ae58c0b0f4d875fa"

      def install
        bin.install "bin/autoproxy"
        bin.install "bin/autoproxyd"
      end
    end
  end

  def post_install
    etc.install "autoproxy.config"
    etc.install "LICENSE"
    etc.install "README.md"
  end

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end
end
