class ZktfSdkAT0008674879 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-8674879"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-8674879.tar.gz"
    sha256 "e9fc89a473fb9c8f2564e2fbaa3cef73867f90609b4604c3fd8b51ea1086120e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-8674879.tar.gz"
    sha256 "f6203d4e568594945f36cda8df061e5ff790c46cf880aaa2262281e75a917b13"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-8674879.tar.gz"
    sha256 "a220379b64d15ad63da6a3198afd42f691db81ab6002edb2d2708abe7c01a311"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
