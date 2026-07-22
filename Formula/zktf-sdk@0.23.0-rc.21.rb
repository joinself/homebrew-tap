class ZktfSdkAT0230rc21 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.21"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.21.tar.gz"
    sha256 "d7a895f081e47668d724d6d2f6ba2fc7f7f82e852af29cb8c80148df0ef405ee"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.21.tar.gz"
    sha256 "061ce9d7911b02a955bd10ab8e58118a10175843ab227671fd38843d663490b3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.21.tar.gz"
    sha256 "30c4429325c6b9d09ef20e43d8e408ea4c28efb3d6bbe1978daadb4bf7879975"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
