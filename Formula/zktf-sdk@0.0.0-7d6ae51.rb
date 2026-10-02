class ZktfSdkAT0007d6ae51 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-7d6ae51"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-7d6ae51.tar.gz"
    sha256 "b755e5346f4f32a4a070ce3fb3c8f79cd2ee98debfd1a82c5088c385e562b8ef"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-7d6ae51.tar.gz"
    sha256 "3bdb26f0014a04a8675960421af9fee436e4865ca59feb2d0c9e5b27303047f0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-7d6ae51.tar.gz"
    sha256 "ae5fd581ca6f91e85943e19abed5eed47d4516ccdde47989d4acd5a5b89dccd8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
