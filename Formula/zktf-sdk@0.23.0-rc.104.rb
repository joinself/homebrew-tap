class ZktfSdkAT0230rc104 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.104"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.104.tar.gz"
    sha256 "ca246ed007ea312b207e2e18c970049002c9ab9edf8ac6c77e8c317fd035f8a7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.104.tar.gz"
    sha256 "7bf6c750bb22430ef51fbff250f154139203ef056357a48cdb94e000ce7e8ffc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.104.tar.gz"
    sha256 "819cbaeecb4846ce120548d982afc079e1176a75eba0f53a1839fe0925067466"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
