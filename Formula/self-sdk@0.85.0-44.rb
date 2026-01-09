class SelfSdkAT085044 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-44"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-44_darwin_amd64.tar.gz"
    sha256 "77cecbf5bd5c0020f61318f6b551fa136070059a17ba0939a76564bffbab0e17"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-44_darwin_arm64.tar.gz"
    sha256 "95fdd3273938203f887ab3fe98a68f9a52e397c5a47cc933ebf95f32a4f8f61b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-44_linux_amd64.tar.gz"
    sha256 "3a4ba510c5ddd6dd34a30aa6364112d65ef2cd990cd639291248c04518a33d09"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-44_linux_arm64.tar.gz"
    sha256 "1bc93fcce4e90fc564759b3369b797f895110bd789a23efa4824d785bf8f2cff"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
