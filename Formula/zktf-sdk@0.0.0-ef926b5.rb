class ZktfSdkAT000ef926b5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ef926b5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ef926b5.tar.gz"
    sha256 "eb754f7959cdd2f44f5eac6164d1239a52ef668a6a7a06339ea425ebbc0ef1e2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ef926b5.tar.gz"
    sha256 "4c85b32ea7d6400dbff34cf5c2288db7f3464cece35d22a315231320d7b317c3"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ef926b5.tar.gz"
    sha256 "d9ad2c29a9989f1361a4933ebbd5e480384d9154c20c647346d56c757a191e2e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
