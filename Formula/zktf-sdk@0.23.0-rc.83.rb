class ZktfSdkAT0230rc83 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.83"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.83.tar.gz"
    sha256 "6de1a1cc3586f483ca382112b46d62ed250e3ce5c13c93233dc444df230157bd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.83.tar.gz"
    sha256 "4fa0d5b8057c227d95909f4b60097a66065e4b204902a01560d0f2ffe874d1eb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.83.tar.gz"
    sha256 "31621cb0748ef6ab6e3deb2b6c428b63ac030d4a9f0fd137876626aae174f1ea"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
