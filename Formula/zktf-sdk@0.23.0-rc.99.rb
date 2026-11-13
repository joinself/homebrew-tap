class ZktfSdkAT0230rc99 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.99"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.99.tar.gz"
    sha256 "25fe20980e263b38b0f83d4e757b58b686d06397fa56269f7f4ccc5857cdc582"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.99.tar.gz"
    sha256 "d9388aad566518f9b18dae8f1e79d06703f43f0eee5fbe548812468cf9c81adc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.99.tar.gz"
    sha256 "711bb68e9b9424a60dcb6f205464290f35e6d0d27f08c496e6b8732aba5a1e73"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
