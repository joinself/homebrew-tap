class ZktfSdkAT000f0eeb93 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-f0eeb93"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-f0eeb93.tar.gz"
    sha256 "3cbecf70ea65d99225f9f0de0264319bd1794b64173b9567d1665c8da3303cdd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-f0eeb93.tar.gz"
    sha256 "fbf88c3153d406d4a5073d7d92a2ecb4d1ddf600b0d586a532984d65a7f3f542"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-f0eeb93.tar.gz"
    sha256 "a07e3f9d54283d26f98ce659c7f3697e0badeca013751eccb62c1a8e25ed7cd2"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
