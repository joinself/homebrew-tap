class ZktfSdkAT0230rc64 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.64"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.64.tar.gz"
    sha256 "6d5e23e33858fa8bee6b6b51ba053d4825e0bed535bd1dd1227e63369217650e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.64.tar.gz"
    sha256 "2791af9a85545541343485e9b1f85b3f4ede7f6ab74bfe3e2a632bc705444ac9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.64.tar.gz"
    sha256 "deef169c52afa180a08cc5113e9b41a08123619ded4798588c8ebb86710d9ae6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
