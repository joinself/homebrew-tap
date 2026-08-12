class ZktfSdkAT000ec6631b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ec6631b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ec6631b.tar.gz"
    sha256 "1ae3089db904ce7534d21eed235f10fc2c894efc521efed5c7352bec24ff9850"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ec6631b.tar.gz"
    sha256 "93f81761996248ddcfd53fc080e308da1e6328370a2d6b2ac2facfd023236284"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ec6631b.tar.gz"
    sha256 "d92dea426c365f9818f40887270139571ef34112ef39b38e8d09c9acfbb7023b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
