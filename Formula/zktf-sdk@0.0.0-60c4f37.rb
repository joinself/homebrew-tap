class ZktfSdkAT00060c4f37 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-60c4f37"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-60c4f37.tar.gz"
    sha256 "f5640b28ba0c118c91148018a9c5c26daeb064ba55a94b237c625998e09842f2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-60c4f37.tar.gz"
    sha256 "78592f0062b85d495af0d6c05cf50216000b5fa7a599142dfae90d63e809c830"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-60c4f37.tar.gz"
    sha256 "d1167c8ffb5ffa712bde55abaee3c2b2b5c46604c134e4ba88ee9069e5407f5e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
