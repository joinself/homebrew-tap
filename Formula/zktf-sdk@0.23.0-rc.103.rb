class ZktfSdkAT0230rc103 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.103"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.103.tar.gz"
    sha256 "2bdebb051714279173d8882f839e198944fe6ef7dcbf3c9455492c500091b138"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.103.tar.gz"
    sha256 "114c39ebb101386132ee916ad38eb2acf0f55c39b1c4153297a0ee276475a731"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.103.tar.gz"
    sha256 "73b88af1414440a0a112f9aa7cd784e5e39315baab34bd5e54eaaf0847b9cc4f"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
