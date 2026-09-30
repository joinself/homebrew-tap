class ZktfSdkAT0230rc66 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.66"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.66.tar.gz"
    sha256 "0c9d5c0e18dbd7976a00dfd14029dd228313942bca68d536ae2c1e2d9e9d38b4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.66.tar.gz"
    sha256 "da5c066349b1a57158624c16ef8083d9e1fb1f1fd11743fa9caf4bbe4d480518"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.66.tar.gz"
    sha256 "4aeef70d2b51bda4334d93b796e3851a813d1243e9be6b3b13a9cf824115b738"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
