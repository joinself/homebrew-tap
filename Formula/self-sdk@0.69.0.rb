class SelfSdkAT0690 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.69.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.69.0_darwin_amd64.tar.gz"
    sha256 "4809f91acde4f5b46f08e1c9bd13216ac67472e9c6f93b2fac9fd781b0633d26"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.69.0_darwin_arm64.tar.gz"
    sha256 "f5d4189fe37ff8fbbaa89cb73b4b0ffc3386750097b11189c99cb7f7cd9c606a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.69.0_linux_amd64.tar.gz"
    sha256 "7a94c45ff2cc6f4ef3802f8b326597ea1e7349cf7ddd865945ead17f955c8d45"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.69.0_linux_arm64.tar.gz"
    sha256 "d2c880e4f6931d0c15e8b9f8863ac4c52c45edd2afcb216cae6e80f6800b7903"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
