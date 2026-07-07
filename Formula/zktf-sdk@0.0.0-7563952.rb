class ZktfSdkAT0007563952 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-7563952"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-7563952.tar.gz"
    sha256 "b9bf6c33fb7fc387450de1eb4a424ac994897130a4bca7a0a1c3acd46979ee96"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-7563952.tar.gz"
    sha256 "fb14f6bc6b1082d8d520eca72ca7a2c8f1842bde8ec0e2f1ffdab4e96172c0de"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-7563952.tar.gz"
    sha256 "b176fb8b4288f849809892abf80d2bb3612ac72011249c2f0f8fd8063f1926fc"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
