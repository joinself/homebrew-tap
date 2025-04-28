class SelfSdkAT08306 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-6"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-6_darwin_amd64.tar.gz"
    sha256 "8cb8444f444857988d728f9290f2146b658b8a62f7919242337774834186db0e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-6_darwin_arm64.tar.gz"
    sha256 "caf402886abe4f281cdf71315e1ea0cdbc3e0f5495a40b0acdbdfbb1625b9a8f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-6_linux_amd64.tar.gz"
    sha256 "9fb673cabeb4c0a329edf9500e8bd191bdeaaffd2eed36516e294526e8b9f6ac"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-6_linux_arm64.tar.gz"
    sha256 "8001aad2454dc2640a7e1ed7404a5bf3f4f00563b0e101de8cc281801d92e278"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
