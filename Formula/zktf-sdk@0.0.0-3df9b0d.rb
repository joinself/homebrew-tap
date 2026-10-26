class ZktfSdkAT0003df9b0d < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-3df9b0d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-3df9b0d.tar.gz"
    sha256 "fc12e7a972563d12abe9b7e5c1b34b1f35977b7e4039382fb788a1d0caa8a808"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-3df9b0d.tar.gz"
    sha256 "bff6d371dd584d915e907a3176f0d0312265204d44491ba43c730ecdd0d78e1d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-3df9b0d.tar.gz"
    sha256 "1d3c890f99c814b1dc62e5414d58ee402cb1afba44ec5b3b5231cc4476c7784e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
