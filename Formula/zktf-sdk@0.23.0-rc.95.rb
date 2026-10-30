class ZktfSdkAT0230rc95 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.95"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.95.tar.gz"
    sha256 "cf82cc3e8b685a3c4686e6f720bb1da413dfa71fd9fd562d96bdfa0adccd2d68"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.95.tar.gz"
    sha256 "67aaf4161710ecf2975ce1c7045605fa63bda17e2200b57e7d19681ae7c75b4e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.95.tar.gz"
    sha256 "da1d43068b6a36de302b755488f0987f735a8ebe1326b7c19e53c66585cbd426"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
