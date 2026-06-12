class ZktfSdkAT00024ab09d < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-24ab09d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-0.0.0-24ab09d-darwin-arm64.tar.gz"
    sha256 "e22092e37120ecf41df1671f90440f9ab412910059a53bee5866680dd3e34c07"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-0.0.0-24ab09d-linux-amd64.tar.gz"
    sha256 "d21e6d5cf6548db6cf224eb453467cbfaf0eb31c3c4b2fb4e8e4b9994836c210"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-0.0.0-24ab09d-linux-arm64.tar.gz"
    sha256 "836ee3cfa93108ff5cf855944ea17562e11d2d25292342b2fd64ba63c182deea"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
