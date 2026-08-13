class ZktfSdkAT000ca847a7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ca847a7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ca847a7.tar.gz"
    sha256 "125cec32cd43bccff5b4828261aece540b3713962b5db5e00464359d81caffd6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ca847a7.tar.gz"
    sha256 "8d245631ef020c1312874fe26ce5ac2906d42b94758be7df3d6069fdbd2787a4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ca847a7.tar.gz"
    sha256 "e036092ab34f35470f08f3e5b98da35ba658f6f9b42d286ac0f0e8bba9a4bda1"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
