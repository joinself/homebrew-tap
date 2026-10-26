class ZktfSdkAT000143e811 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-143e811"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-143e811.tar.gz"
    sha256 "1f668255e2746f953d5fbddf0039219af1db1210bdf4e924c85965c9388af60e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-143e811.tar.gz"
    sha256 "a73a41df112ab8f6b332aaaa1070dd7332ae8cd2ebdb630441c1dd3b2db73b8d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-143e811.tar.gz"
    sha256 "b9fd9823210688127f5b4ac684a643c2ddafcea20263d95bf3008184c7fb9af3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
