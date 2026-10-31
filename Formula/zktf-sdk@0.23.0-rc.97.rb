class ZktfSdkAT0230rc97 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.97"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.97.tar.gz"
    sha256 "a764b0f35bbd4b351f5b0297071a9c92cc9adae90f8c4e2bfb95bc0ddcb20fa9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.97.tar.gz"
    sha256 "53821810fd8960627313d20d76d4e8d2f724e65cdac0b2637dfd1b9441cd3a3b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.97.tar.gz"
    sha256 "9128f9f9f10c9e029ca880a92f7001e5f248d8acfab942ff7b059ac509bd68f9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
