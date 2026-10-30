class ZktfSdkAT0002629836 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2629836"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2629836.tar.gz"
    sha256 "2c099e33cd308d8d1b06dcac6f6082f3194b6fb1f0f4c8694ccb004d26e52f2b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2629836.tar.gz"
    sha256 "07b18b23865e5e13f94f54851cf5c7d32efdd4c1685ddc84aebf10fe1e42f86b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2629836.tar.gz"
    sha256 "f5e02bf4eeaf313f95ae2e16f64dbe6730e7ac5bc105dce6168672aa5c8c5abd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
