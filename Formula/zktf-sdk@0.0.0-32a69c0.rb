class ZktfSdkAT00032a69c0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-32a69c0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-32a69c0.tar.gz"
    sha256 "6484017564d97182e60363cb71f7fe72164fe2aa9c174b0d67f6324d7b389622"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-32a69c0.tar.gz"
    sha256 "df270ff8207f28808b821f1eb12c9e183070b6ef148df0b1aff07bdd7cb9aadb"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-32a69c0.tar.gz"
    sha256 "0a822b7a578fe36d7b5e6bcd9b65171020f371934585e7a2d6d45e9552ed63d8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
