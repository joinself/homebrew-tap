class ZktfSdkAT0230rc13 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.13"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.13.tar.gz"
    sha256 "1f9a91eba9c5839ae06d94bec93d1ca1b184921ea523cf08663238032ff46cd0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.13.tar.gz"
    sha256 "6d42be0e52d644f232226a48ceb5151bc76f9d6fe92b6200b570bf9689f6f8de"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.13.tar.gz"
    sha256 "0180e9f13e6a86b6e329da77a5e4443a39efdb6e7460304714bf83d2b4e66607"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
