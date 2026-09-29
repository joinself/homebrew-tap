class ZktfSdkAT0002151971 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2151971"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2151971.tar.gz"
    sha256 "46105a5d95b61039290bbb85ccc9d279d21d141eaf9b844a3b71175a4402a357"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2151971.tar.gz"
    sha256 "baa2616fd597416056bf8135c468498a8537b1e1ec28e5096c3440bc1f30622a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2151971.tar.gz"
    sha256 "425e8222a6088513a8a58ed0e0c849b33170d4528198df17c973d1e5de93e5a4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
