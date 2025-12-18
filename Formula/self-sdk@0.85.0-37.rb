class SelfSdkAT085037 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-37"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-37_darwin_amd64.tar.gz"
    sha256 "b8c2a75250edf0fdb5398eb62fae318a35505e20b78fe03c63b017bc891704ce"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-37_darwin_arm64.tar.gz"
    sha256 "b9918bab044dfa702a4e64e6aa9069053d5d3e1bfa1a44181fe7292c004c03a8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-37_linux_amd64.tar.gz"
    sha256 "f3e4e3216f4eb6ffbddd558c222635e8740e5b36eabee1f2e365e9c1186a5f33"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-37_linux_arm64.tar.gz"
    sha256 "05ddc3a86a6e3c88f1a54bcb4d02058bf2c807d626731270300f559070d298e1"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
