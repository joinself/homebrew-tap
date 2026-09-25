class ZktfSdkAT0230rc59 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.59"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.59.tar.gz"
    sha256 "bc827628553f4d7124f5def3fb2a1f49c7e231833d0d4300a8e4d1c54eac6178"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.59.tar.gz"
    sha256 "ded99e4d0f886cfa2d7191237a2deb9c65a5b0e1041d0f070d9758831101635d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.59.tar.gz"
    sha256 "a9c957244157928614c103ed05c08807bfbbb38b20ce563ddf3f90d4fa05838b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
