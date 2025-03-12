class SelfSdkAT0780 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.78.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.78.0_darwin_amd64.tar.gz"
    sha256 "81efc2521392f72cbcb39e012140881d62cb3f215cf239ea56e5295f771bac2b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.78.0_darwin_arm64.tar.gz"
    sha256 "5b36d17d4cb7d4e276f84918fa5907362ed03899bf36099067ee4b67c81b1577"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.78.0_linux_amd64.tar.gz"
    sha256 "8c3f7de500b36320276cad0b11dd4d63dfccb41a951933ad8ebecb87b7a4647d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.78.0_linux_arm64.tar.gz"
    sha256 "5889812db4340eba1989994b7138f30ad7137c24ed2304385705053074ba8bf6"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
