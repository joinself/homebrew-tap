class SelfSdkAT0560 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.56.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.56.0_darwin_amd64.tar.gz"
    sha256 "9754d3bb24a8de1fdf7e59f2a6ca6b40e8157dfe2d9037a19ef1f83bcc56c563"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.56.0_darwin_arm64.tar.gz"
    sha256 "dbcefdb3c80f1caeae4d5914dc94aa11b048444583994f95247c4769aa65aad4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.56.0_linux_amd64.tar.gz"
    sha256 "6dfb3126d0ca3422605f153bcd0dc5c5ac7fba516c10781b3a2d3114ac2792da"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.56.0_linux_arm64.tar.gz"
    sha256 "1875ee8e0f3dee8aa170ad5d4bf6f63fa39df1cdcb17d4e078811c47ebc8644f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
