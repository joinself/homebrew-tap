class ZktfSdkAT0005e98599 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5e98599"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5e98599.tar.gz"
    sha256 "ff0294cd57176d0504e367f07faaf233d31024e4d35ae78202b3c3241ad9509d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5e98599.tar.gz"
    sha256 "658217e8efe7baf09c2453b96ab0fc39adbd5d772b4ceb50fd19edd01f4e9bb8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5e98599.tar.gz"
    sha256 "a09f0592404eac71f9efcaeb72d49d0209e4be7c347894b120981af81f34423a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
