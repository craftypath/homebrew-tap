# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotf < Formula
  desc "Handling multiple environments with Terraform made easy"
  homepage "https://github.com/craftypath/gotf/"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/craftypath/gotf/releases/download/v0.15.0/gotf_0.15.0_darwin_amd64.tar.gz"
      sha256 "798290c456e7c3e54bcf693555d5acdd94873a83945b068412d91aae7f682769"

      def install
        bin.install "gotf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/craftypath/gotf/releases/download/v0.15.0/gotf_0.15.0_darwin_arm64.tar.gz"
      sha256 "14b7177a2ce54053ddf61652e8696121822691f9bfb51b163fd1651c3ec16b58"

      def install
        bin.install "gotf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/craftypath/gotf/releases/download/v0.15.0/gotf_0.15.0_linux_amd64.tar.gz"
      sha256 "0f7ddf02d854e0e740cc1bb1fabe9c73dca361690eb03c829984ff1fa3c07dd0"

      def install
        bin.install "gotf"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/craftypath/gotf/releases/download/v0.15.0/gotf_0.15.0_linux_arm64.tar.gz"
      sha256 "ff7a9d48b8c7ee9cc6fe1a28d1dffbdd6e30780410fcd97d1e3f6998fb4bd17b"

      def install
        bin.install "gotf"
      end
    end
  end

  test do
    system "#{bin}/gotf --version"
  end
end
