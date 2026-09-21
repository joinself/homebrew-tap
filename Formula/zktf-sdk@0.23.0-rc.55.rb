class ZktfSdkAT0230rc55 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.55"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.55.tar.gz"
    sha256 "561ef4405fa4ef5bf432b808491a33493b2e6fcddfcf2b8e3cb9cff480827b5f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.55.tar.gz"
    sha256 "0c6d5c0b4d8ca743a596c98254ad183affdd19d3c846874e70f479a8ce05463d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.55.tar.gz"
    sha256 "75f8da0086b4c79303de9f8f7dab4ef2cc9bcc3efaf1f0c9e9fc1ff7c6336719"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
