class ZktfSdkAT00099cf126 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-99cf126"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-99cf126.tar.gz"
    sha256 "65968ceecc854440b586e1c4582383d86b48298b7181d73cbff1d504e8848a51"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-99cf126.tar.gz"
    sha256 "56701116037839eb28ffc1bc4263c67cb209da02666ca701ba6ff0a17617c687"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-99cf126.tar.gz"
    sha256 "b34d2613b4c5981d66114f52602111523b3be25d747e8f95b87eae84ca899474"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
