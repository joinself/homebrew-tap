class ZktfSdkAT0230rc52 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.52"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.52.tar.gz"
    sha256 "024190d6750a6c019c6fed27713dcee043ca24af299b315bfb1b2aeb1bc65281"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.52.tar.gz"
    sha256 "8a819199575d7a9cd0c2fb47636281f8fafbe260218a76d3189ac9f9cc418b42"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.52.tar.gz"
    sha256 "00eb8cbcf7b6b3a0222a8285eb167d928c3a833abf1f570412abadacc70f2a91"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
