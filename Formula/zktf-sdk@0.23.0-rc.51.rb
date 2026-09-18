class ZktfSdkAT0230rc51 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.51"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.51.tar.gz"
    sha256 "d8bfabc6fccc7a0878235a78af3ddfa69b5f48ca92256b344e5d71a2b3f90caa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.51.tar.gz"
    sha256 "8ea2b5fcd8469ad61b9ae87475c5bc6fc1e5c097354e71e69ba2e891dd1d62bc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.51.tar.gz"
    sha256 "6c75ef87bd43bcf748fd02c5738c5314a7ad1cf24235e07316dc68521bbebe8c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
