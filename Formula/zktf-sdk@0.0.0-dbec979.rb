class ZktfSdkAT000dbec979 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-dbec979"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-dbec979.tar.gz"
    sha256 "89a5df9f59b41533088283d2271a8b460a5debd610a615f6dc2f26edac4d20d0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-dbec979.tar.gz"
    sha256 "59fbba27fbc93cf8f5ab0e047f4ff29dbbda61f6b8b8d7f7b4c57f2ee7068bea"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-dbec979.tar.gz"
    sha256 "2708c9491cb47ccb3a6692c26ffd151ecc8058c25b4381bc012869de7802b925"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
