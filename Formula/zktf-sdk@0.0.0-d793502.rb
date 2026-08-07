class ZktfSdkAT000d793502 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d793502"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d793502.tar.gz"
    sha256 "42fa8dd2304c80cf2e91133f58adacc9212edabffb353bf92fffccadfa648b1f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d793502.tar.gz"
    sha256 "ee037d9975db32d5717afe18975679533bc01e973c20377ceb9ebbf64b5e1f52"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d793502.tar.gz"
    sha256 "a0730df80f0a69989eff50b515480a0935ff6f2ecf2aa9a73d90fea9e8522db5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
