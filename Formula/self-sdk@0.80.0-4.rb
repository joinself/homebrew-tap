class SelfSdkAT0800-4 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-4"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-4_darwin_amd64.tar.gz"
    sha256 "b787570a3969cf5173c0b317646c5989be60731825c07592ca4b7532beb61883"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-4_darwin_arm64.tar.gz"
    sha256 "88229f6f7f8324ad8f13b260ef3b75d94d45a2d98cf43b9ad76bab9cf297ee1c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-4_linux_amd64.tar.gz"
    sha256 "e8a631b24e06f485ccec0961ecb4e141f950e66ae1ef1f8519adabb564558884"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-4_linux_arm64.tar.gz"
    sha256 "6ce24ca8c1b4693f923b9016a678b98156d1afd615f2f390df587c271cb66592"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
