class ZktfSdkAT00079ddea7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-79ddea7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-79ddea7.tar.gz"
    sha256 "073c1a23376eeabd27f6f5f3e402c4ac1f392ee5d3ab593f7d28b1aa121314b3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-79ddea7.tar.gz"
    sha256 "2e63aa41113627d4f5175e3e449db0cafd51d2d9f947c8ca87c9db3938ac9f4d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-79ddea7.tar.gz"
    sha256 "30c2ff667e240f5330aec78306c54de63cf8c9dfd46a94d73e05376d0b84ccb1"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
