class SelfSdkAT0800-5 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-5_darwin_amd64.tar.gz"
    sha256 "5c9d0fbbceec3764aa42c2968045869e2ab2e089f708a9ebe37f8a7e7ac03227"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-5_darwin_arm64.tar.gz"
    sha256 "b029e66a3f296607b47589f7051b782053166ad0394a8078ffb9a2a1f513bcc9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-5_linux_amd64.tar.gz"
    sha256 "408d191502b8e53f01ed386bf2b651d5e7cc01a8b93813a3056e9f10116ab097"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-5_linux_arm64.tar.gz"
    sha256 "4bd1b5efa269529d93cc6056463c13499737463c2d90471e2d621981bbdfe601"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
