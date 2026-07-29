class ZktfSdkAT00088b1ba4 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-88b1ba4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-88b1ba4.tar.gz"
    sha256 "6b89acc7bf9400886fbfde7322167f22812bdb68afb4504e64b1a0e1c13a7ae4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-88b1ba4.tar.gz"
    sha256 "356bc64b40947876fb30f26d1c0943b959b555ab8c79840c1fe328b458924379"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-88b1ba4.tar.gz"
    sha256 "ce924d20caab725e8fe75b87146810e074d9b5940049201666bf667a5344b8aa"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
