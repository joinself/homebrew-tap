class SelfSdkAT085032 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-32"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-32_darwin_amd64.tar.gz"
    sha256 "a72eaf026987b970ac5e9396a875c3db2cc9188c80b80f9f2582a4f24a8afe6d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-32_darwin_arm64.tar.gz"
    sha256 "04a04b08aebc3b91d60e03f6f8b62a422a4e70971a5279aa055a060fa613533f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-32_linux_amd64.tar.gz"
    sha256 "366315f0b6bb9fd3df136b499cb9b151e0f58d838988f3c6f78d31fa773a61f6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-32_linux_arm64.tar.gz"
    sha256 "d5d37cd38c319b1cd2708072e76f0214bbaafbaf043e4bc3b2b89fbd1a44afa0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
