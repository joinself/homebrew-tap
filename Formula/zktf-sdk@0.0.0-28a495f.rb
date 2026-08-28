class ZktfSdkAT00028a495f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-28a495f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-28a495f.tar.gz"
    sha256 "99217702379c30d35748fcebba073223e818dca06571a8cc024352acd9107ee8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-28a495f.tar.gz"
    sha256 "e8f0be2754f49bbd287c15e71b744b50d8ac308ec5c2b7001e58f375aafec103"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-28a495f.tar.gz"
    sha256 "2c9843329a3aeb2caa4386367be263f2b757b63a214b6256631691c3419789f1"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
