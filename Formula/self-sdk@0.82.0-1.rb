class SelfSdkAT08201 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.82.0-1"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-1_darwin_amd64.tar.gz"
    sha256 "75c9cf50b4f4006e21f3bf0be04beede43bd1cf1ce82727e1751a22326687e1b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-1_darwin_arm64.tar.gz"
    sha256 "5c9190de784ae9fef6c14c526b4918ce460eedfed946fa0ec5f2c0388dd310e0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-1_linux_amd64.tar.gz"
    sha256 "d1787e78a2841099056b5b709350c4188c5d3c12903916584847ea2fde4e5110"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-1_linux_arm64.tar.gz"
    sha256 "d508e21c0743eda413d98a5792b60fdb78fefab2f97b3ac4cf2924112fe492cf"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
