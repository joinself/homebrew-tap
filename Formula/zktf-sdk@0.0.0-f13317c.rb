class ZktfSdkAT000f13317c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f13317c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f13317c.tar.gz"
    sha256 "d290cff35f3973dfda982a96d008ffb4446d4eade8481a104add8221915203c1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f13317c.tar.gz"
    sha256 "fb558b11692a0df35259ce73541138b54c8925140d492aefc5f60e96e7636ff1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f13317c.tar.gz"
    sha256 "ece7941e0471875d6fae32222b580ad6e935c90e0d2b9d4d60d4f2c40a3bbb85"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
