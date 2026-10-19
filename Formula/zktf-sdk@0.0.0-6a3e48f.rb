class ZktfSdkAT0006a3e48f < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6a3e48f"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6a3e48f.tar.gz"
    sha256 "bdbf0f79a8d3b921f57c8a1508dc95d598a2e55afdc521e64572f99bdb913b68"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6a3e48f.tar.gz"
    sha256 "ddab3c5effe6337149f0737b038e2238c9e2e31385f0d0ec259db3b4eaf7fad7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6a3e48f.tar.gz"
    sha256 "da18444ed2cf74e78e48e4120d572d3167f1c90fc8937138b3ca98f888b78de5"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
