class ZktfSdkAT0230rc107 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.107"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.107.tar.gz"
    sha256 "6bf83eafec5535115a4e8a544e276234553f132c8cbfad2851920872039a0508"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.107.tar.gz"
    sha256 "2728eb8e3c086bb615995e2a9572aedfd9b8dce73111b44d8ccd2fab8e9f6cee"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.107.tar.gz"
    sha256 "8b7f21edf0b115769ed848caaf3b98901f525d984a66272bc2c4d6ff63a73405"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
