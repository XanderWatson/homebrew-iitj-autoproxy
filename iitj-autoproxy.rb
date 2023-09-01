# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IitjAutoproxy < Formula
  desc "A CLI tool to automatically login to IIT Jodhpur's network firewall."
  homepage "https://github.com/XanderWatson/iitj-autoproxy"
  version "0.1.2"
  license "MIT"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/XanderWatson/iitj-autoproxy/releases/download/v0.1.2/iitj-autoproxy_0.1.2_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f7421aa10417eb7671c14b7768a7d4f91b4d09a1a1c7f10b816e49bdc402429d"

      def install
        chmod +x darwin-install.sh
        ./darwin-install.sh
      end
    end
  end

  def post_install
    mkdir -p /usr/share/licenses/iitj-autoproxy
    mkdir -p /usr/share/doc/iitj-autoproxy
    cp LICENSE /usr/share/licenses/iitj-autoproxy/LICENSE
    cp README.md /usr/share/doc/iitj-autoproxy/README.md
  end

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end
end
