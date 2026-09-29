class ZktfSdkAT00044f320a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-44f320a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-44f320a.tar.gz"
    sha256 "5db96f2b3e2178452f50abada61715cebeb0ebe889b7a3fd488f9a9c217e9c66"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-44f320a.tar.gz"
    sha256 "3256e4b5cad151e4805cd421b00ce7e4fcdb388458f1f6240db745d09dc0bd4b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-44f320a.tar.gz"
    sha256 "2d5be7c978db80502bd7d9a02bacf94043234f54d942f1736967df022ea8ec66"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
