class ZktfSdkAT000f72df08 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f72df08"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f72df08.tar.gz"
    sha256 "3b5c3746f05dae28db214e508d186d64c257994bc745e8d23bcd9475dff605ba"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f72df08.tar.gz"
    sha256 "71f4380a7ee558f6980213445113558345aa2ae80f61940754466e05808202dd"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f72df08.tar.gz"
    sha256 "4b079ff1ba5260aac70f94224e4dec7d08de9bc07c3ac9004a6172bb71ba05bc"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
