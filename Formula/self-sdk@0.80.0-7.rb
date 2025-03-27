class SelfSdkAT0800-7 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-7_darwin_amd64.tar.gz"
    sha256 "c0f7dedf7050d4987e9227b7d80f4a06bef5fe4450d5248e2b0f6e1f14358103"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-7_darwin_arm64.tar.gz"
    sha256 "565360d7f8943de248a11b9596cd393e0e9e3123a0bbfdd14c784fdeb61590e7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-7_linux_amd64.tar.gz"
    sha256 "13af80e23a68bcc99632f7d087a6b2dc05c2508468db9747b7fbd59ff9249989"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-7_linux_arm64.tar.gz"
    sha256 "f8d159af24ae8a92023b9f3503bcd15fa4b8a66e0ce60d8066b58294d923d684"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
