class ZktfSdkAT0230rc60 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.60"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.60.tar.gz"
    sha256 "10767ad3d63cfb7866e712f5e5144ac3d9dab5be67df8c2695543afe535559a3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.60.tar.gz"
    sha256 "a47590613beabbf0ad8635421f9ffbbb05c4f00dbd1915728698b25af41c2fcb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.60.tar.gz"
    sha256 "f62a3c4c2c50d6ddecfbb349fe1edb5597c66699c1f3127278682d367c339cd3"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
