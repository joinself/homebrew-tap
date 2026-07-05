class ZktfSdkAT000a4681f9 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-a4681f9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-a4681f9.tar.gz"
    sha256 "ebcb4e101d02c797310f79133aab612ec7ad2594c4fa234afae7847384f726ec"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-a4681f9.tar.gz"
    sha256 "c1ec974ddf84b2b60fbf0c4980ac60c8cba5965ae3bbbfb274188d465a51598e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-a4681f9.tar.gz"
    sha256 "23486abeba8e8fe0d8377ef3504b1206a0e4ff45a8ddd7737e0ac3e06d351273"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
