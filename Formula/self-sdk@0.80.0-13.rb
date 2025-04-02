class SelfSdkAT0800-13 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-13"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-13_darwin_amd64.tar.gz"
    sha256 "d517a1fbf13d5462b94210c779901758ac01e772d8017a9fce922bcf4dca8f76"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-13_darwin_arm64.tar.gz"
    sha256 "b2aab2a885f1bdc3a438c502166d905b5205ee3c1a2417a92a96768c51e19cd1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-13_linux_amd64.tar.gz"
    sha256 "9a7821ba94f5cdfca0a3fb3acd304881758fa949b7600617b6035d9b638617de"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-13_linux_arm64.tar.gz"
    sha256 "859d1ea42dab02aa040013b7795911c9f497f568fd7bcde549d0fc904b1b6017"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
