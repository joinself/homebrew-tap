class ZktfSdkAT0230rc5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.5.tar.gz"
    sha256 "4c2405cf19e8769dedf5f628c6a2e08bd9a211d430eca24858b6eb6876110070"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.5.tar.gz"
    sha256 "c66d296c799984ae930a39187334eeea106266e54706ecc0dbb459eb7dc23afc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.5.tar.gz"
    sha256 "a94d56583ee936b7aa8450109874ac14a1ae57b9452c6b428bd9f7d104580821"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
