class ZktfSdkAT0230rc92 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.92"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.92.tar.gz"
    sha256 "559b6f43b32f16f6ade06afee393f1238f1c2f8660f65f22a2b52f61139ea07e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.92.tar.gz"
    sha256 "a46fbaa6566cb8a4dff8cd3e3641dc6b584ab9d8fe9d9a79f291985a06e9f8ad"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.92.tar.gz"
    sha256 "236bce478514b7a7b4ee76f34636147ae1c6417a9afec445ed7723ef4f3b9824"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
