# This file was generated by GoReleaser. DO NOT EDIT.
class Gotf < Formula
  desc "Handling multiple environments with Terraform made easy"
  homepage "https://github.com/craftypath/gotf/"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/craftypath/gotf/releases/download/v0.9.0/gotf_0.9.0_darwin_amd64.tar.gz"
    sha256 "664f636856d6aa312279fbf5d51d09f0f145489524b0d905a19bfd6b147167a8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/craftypath/gotf/releases/download/v0.9.0/gotf_0.9.0_linux_amd64.tar.gz"
      sha256 "c70c782fa70bc579ee7f6d715f4b7877237befe64c18cd93e894ef4fe1087714"
    end
  end

  def install
    bin.install "gotf"
  end

  test do
    system "#{bin}/gotf --version"
  end
end
