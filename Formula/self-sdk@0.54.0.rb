class SelfSdkAT0540 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.54.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.54.0_darwin_amd64.tar.gz"
    sha256 "73aa11cddb1bba4c7d1c9883146f29dbf95afab62aecc00b536f37bbeef0ef8e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.54.0_darwin_arm64.tar.gz"
    sha256 "99374407c6cf3d9413fc23c461cbc3360e54bca9b016f2fd2d36a7862f1dc28c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.54.0_linux_amd64.tar.gz"
    sha256 "f9c7f940922cf331fec23bb9d3bc52752c5d65bba63ced6b0a82fba1fb7d7b9b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.54.0_linux_arm64.tar.gz"
    sha256 "dd4398f5a675578ee54f12e1815f891cb87d3f773322189060f97c6a93b24fce"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
