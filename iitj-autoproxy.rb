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
      sha256 "f580a38b77b7600894c3f72ce3f1934cd1f9e3e9f14492a838f034806281b186"

      def install
        bin.install "bin/autoproxyd"
        bin.install "bin/autoproxy"

        (etc/"iitj-autoproxy").install "autoproxy.config"

        bin.install "scripts/darwin/daemon-start.sh" => "autoproxyd-start"
        bin.install "scripts/darwin/daemon-stop.sh" => "autoproxyd-stop"
        bin.install "scripts/darwin/login.sh" => "autoproxyd-login"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end
end
