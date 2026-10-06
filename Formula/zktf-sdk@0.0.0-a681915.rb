class ZktfSdkAT000a681915 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a681915"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a681915.tar.gz"
    sha256 "a1ee8e3bd130dad726e4a310c515d2c8536c084107033e0d4cbbb8c4ecaac22d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a681915.tar.gz"
    sha256 "73f3c6aee17746947ae0d1ae64080a0c7fe832d091618cbab38ec87fb3aa836b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a681915.tar.gz"
    sha256 "be8705514f99c11e822a6e1841a8f16f3336cf7c1f869ed86a3e8df3cb3dfa9b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
