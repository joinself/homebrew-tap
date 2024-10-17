class SelfSdkAT0350 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.35.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.35.0_darwin_amd64.tar.gz"
    sha256 "367fce2ad0b8803512465abe0a591fa16a85ca26d010f08724504d80cc796d4a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.35.0_darwin_arm64.tar.gz"
    sha256 "3cf05da7357da2d5fb5a54725ba7f67e53727623d00a58a751dc8863e633a13f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.35.0_linux_amd64.tar.gz"
    sha256 "2a49946314820c7f174adc5ea7b37833a421d48893ec57ceb1c87477e4c12b99"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.35.0_linux_arm64.tar.gz"
    sha256 "7b58772fbe60619fd76e9abd8d1b8d352356b8d228f3323aa15e95b801a627fe"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
