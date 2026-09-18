class ZktfSdkAT0005a2006a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5a2006a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5a2006a.tar.gz"
    sha256 "e30a39a582236da38f00ed729730187255ab963308aed99e893eb4d116ba9d8b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5a2006a.tar.gz"
    sha256 "8c31de09736064b94895edde78aab9adb76de065179399d377646630794a74fe"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5a2006a.tar.gz"
    sha256 "47aa49afada3d688b127bfc4d5490bae21e61513b6432725a070f78bbfb99eb2"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
