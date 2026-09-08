class ZktfSdkAT0230rc49 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.49"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.49.tar.gz"
    sha256 "7fc3be6defc1d5eefc5f1f5ffaf01aaea700129108ef604192e596295080277a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.49.tar.gz"
    sha256 "d2fbb6fbca6a69c06e70d9b037ab09a4ae757aac5233e3f2fdfe6af696d20340"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.49.tar.gz"
    sha256 "54fbe8083a52a9806aec4fbd09d19b20e6aca961cd062b9ed23ddc4dd3e8a6f3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
