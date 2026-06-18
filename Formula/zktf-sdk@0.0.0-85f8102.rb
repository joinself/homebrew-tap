class ZktfSdkAT00085f8102 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-85f8102"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-85f8102.tar.gz"
    sha256 "feed532d238d8904f3fef09eb3523a2e14e0565e4c29abc95d5428b46f856939"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-85f8102.tar.gz"
    sha256 "9bf3f7e1b3918954e0912a68138000493d17186c879ef7b21ee143b45618e3c9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-85f8102.tar.gz"
    sha256 "2750082868c346f6548866923c031bef62a0df66e9de59b200243f9806b4faf7"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
