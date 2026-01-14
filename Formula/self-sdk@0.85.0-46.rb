class SelfSdkAT085046 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-46"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-46_darwin_amd64.tar.gz"
    sha256 "0c37cb890670ffca6aebdbb3e757b92f83ece0e52897b5bd31aafb32939d16f9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-46_darwin_arm64.tar.gz"
    sha256 "ad8a9516a8bba14a86f0850663e71b8da3a09d3e21d936f39a668a29648c803e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-46_linux_amd64.tar.gz"
    sha256 "a7807ad9088e8bb0b0a17e6381ae06bd0fa0880e91a002287f3849a758f41292"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-46_linux_arm64.tar.gz"
    sha256 "09e83956ad106ca86cc1fcc8529fd3560664c8e933f034b52e70df6e2d1dc5fc"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
