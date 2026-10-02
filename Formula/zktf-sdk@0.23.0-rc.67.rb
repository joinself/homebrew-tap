class ZktfSdkAT0230rc67 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.67"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.67.tar.gz"
    sha256 "bca31ef50a4a8d542719a88efe96b52389d1f364043c078e73ff6cc88655bb3d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.67.tar.gz"
    sha256 "7604f3dbf19d34984a9744470d71e435e09f1b47157a1b9c3bf38c7038c243dc"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.67.tar.gz"
    sha256 "fd0c82733611aac5162a5b1521bac08a291d480f9d9f4d48668e825ca8142fb8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
