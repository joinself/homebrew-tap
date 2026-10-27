class ZktfSdkAT0230rc91 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.91"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.91.tar.gz"
    sha256 "bcd7e3ac158247ad337bdd7b4643c2b79cf4bb096a346a75909b97c08ede4f97"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.91.tar.gz"
    sha256 "c02db645351e1c7f59a81c881bcb4e88a89554ec40e02b114537e861ea0d8141"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.91.tar.gz"
    sha256 "2d63e704eb70ded931d575db66d6a4fe571087d115b06547f315bf30b8d922b2"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
