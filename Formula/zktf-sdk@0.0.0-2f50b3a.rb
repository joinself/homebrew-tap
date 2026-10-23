class ZktfSdkAT0002f50b3a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2f50b3a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2f50b3a.tar.gz"
    sha256 "1924acc65627fe23cb7194ead346fd21f48cbd6ebbd9401c956755c2609d72ff"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2f50b3a.tar.gz"
    sha256 "30a06b19a5bb98384bc9b5481bf3f9f3fbe14879c583b81d6fb9e5b53ffe8091"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2f50b3a.tar.gz"
    sha256 "905712d4a5564f27c8096765fd527208665b106b9ec00235089c4935c6190940"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
