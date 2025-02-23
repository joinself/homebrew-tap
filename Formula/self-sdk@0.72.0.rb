class SelfSdkAT0720 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.72.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.72.0_darwin_amd64.tar.gz"
    sha256 "6a675ea2a608dda2854349f03656605bdc14da94e440e6b47e7733845ed385b0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.72.0_darwin_arm64.tar.gz"
    sha256 "6fd1aef9e5de9a80803a9fbb72b74c2348a4f08714821cee1d50638ba6b1b9be"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.72.0_linux_amd64.tar.gz"
    sha256 "a2271061aa4c6925aeb242b5285b0381a4e637769eca7d316436b7293e30034f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.72.0_linux_arm64.tar.gz"
    sha256 "d5d20bc72428f10b657eb44f84721851121637f02405d9fbcde7c666a0949731"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
