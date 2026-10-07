class ZktfSdkAT000fc19928 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-fc19928"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-fc19928.tar.gz"
    sha256 "e05d1ef88ddb3022969998a9416743ec3c41226f6e08fd2909853c35017610c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-fc19928.tar.gz"
    sha256 "4d880bf25bd14bc61d35edbb5a55bd4184d5768165cdbe994a5085245cacfec0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-fc19928.tar.gz"
    sha256 "0cda7b13697378e90c0fdd51caf3ef2d3b35d28843cebd2ea29e6874c7ad46dd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
