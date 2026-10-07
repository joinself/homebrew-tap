class ZktfSdkAT000749e012 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-749e012"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-749e012.tar.gz"
    sha256 "67ce62dda076c731db819c8a4e4ce4ee810f1e8a9ba998b9aa8b87630388d18a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-749e012.tar.gz"
    sha256 "42d6605b367180244cb538a8bc90ac3e416e9e52b03f6c917a1daf524093f3ca"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-749e012.tar.gz"
    sha256 "6ee411c0bef67e66d0860cbcbb776cd314bdb632f5856d92e03a9392b5cadaed"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
