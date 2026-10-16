class ZktfSdkAT000ecd481a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ecd481a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ecd481a.tar.gz"
    sha256 "e8510e49a583b848fcb37748ef06f8ccf10150a175af406e93b1299b2bc4019c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ecd481a.tar.gz"
    sha256 "47a03355a587e1f9f14a48ae71ecb302700a0e5c42f029fa5dc15f27cc93fa78"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ecd481a.tar.gz"
    sha256 "9eb84d19b1aab2a7703c488e198a7c078372ba3fbcb816db29759b570b763989"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
