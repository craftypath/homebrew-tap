# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nextver < Formula
  desc "Automatic semver versioning"
  homepage "https://github.com/craftypath/nextver/"
  version "0.4.0"

  on_macos do
    url "https://github.com/craftypath/nextver/releases/download/v0.4.0/nextver_0.4.0_darwin_amd64.tar.gz"
    sha256 "3a64e384508a35ddbe95065063697aa98e88bac0b9ca88dc28c69fb7e49a84a1"

    def install
      bin.install "nextver"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Nextver
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/craftypath/nextver/releases/download/v0.4.0/nextver_0.4.0_linux_amd64.tar.gz"
      sha256 "e70b729ce7d2bf7ff1cf3eb65035d9ff79abb54ac9576da549bb1117570a7d98"

      def install
        bin.install "nextver"
      end
    end
  end

  test do
    system "#{bin}/nextver --version"
  end
end
