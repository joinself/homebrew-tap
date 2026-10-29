class ZktfSdkAT0230rc93 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.93"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.93.tar.gz"
    sha256 "5f4cdf1997b1dce8d540a20f4a298d3810f36b1977e999d6eb06c075624f2f1d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.93.tar.gz"
    sha256 "e8e5a22ea2cb8fac14311c5cde6d876642131c5dd68bb8629d3c8f2b3f6a543f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.93.tar.gz"
    sha256 "a468ebffd9d12ca1f601fa4c773f3ef113e07884237c40348fc3aa50aab940dd"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
