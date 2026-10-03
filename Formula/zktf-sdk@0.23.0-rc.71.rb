class ZktfSdkAT0230rc71 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.71"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.71.tar.gz"
    sha256 "501537e9c756b2053fe76416ea20be00b23adcc8ce0c426154369c2b14507d4b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.71.tar.gz"
    sha256 "a17cf0a08018262abb09e9a409b86ff3b76206bf2cbfcce9f3767862fbce6101"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.71.tar.gz"
    sha256 "a26ec2b14689a6cd040d3804835f89ca9b9665f32ed79e349297004cbe9ade60"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
