class ZktfSdkAT0230rc84 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.84"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.84.tar.gz"
    sha256 "7952ff03cf608dac455ba048eec3420b5e7394624df50b3e818c588a2c35b2e0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.84.tar.gz"
    sha256 "742ff89ff6525ec647e5ef7f7af7c8bcd58fa41b73a2a96c00bd2c08c9fc5b0f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.84.tar.gz"
    sha256 "adfb00cfbf801c10cb2d962c4ac32806b468c9b8a7e5519b03714ff3838cb667"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
