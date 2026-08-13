class ZktfSdkAT00039474a0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-39474a0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-39474a0.tar.gz"
    sha256 "b32b6c9449eb81a7a2b73eed88038c336d11a06259de660e3af1dc073bb2485e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-39474a0.tar.gz"
    sha256 "83caf7e170bd3324596388b0857078cc96b34d2b9d6b4acf8d1b1eff99f9539d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-39474a0.tar.gz"
    sha256 "8861257c4de1a6c7fdfe3606b7553a2552856e1acfcdbbac1e34da02c074b7e5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
