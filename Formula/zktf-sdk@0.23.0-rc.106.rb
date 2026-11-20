class ZktfSdkAT0230rc106 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.106"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.106.tar.gz"
    sha256 "13dbf9b038a4eb7040014f5fdc6cae8df976d03bc2ba8c52104e5f9570a5e75f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.106.tar.gz"
    sha256 "aa2e5656688179e1fcf63e23d5d57c2c363471dd71fdf5bc75d94488e0584d68"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.106.tar.gz"
    sha256 "e8395ea86ce20e13677e415bc206ab7b9d5fc5a7a909d3eec84acb8f48d0c2fb"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
