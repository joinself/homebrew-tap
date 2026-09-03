class ZktfSdkAT0230rc47 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.47"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.47.tar.gz"
    sha256 "801ac35cce2842342d280ff6c6ebbc070cd06d937b1f78d9a12031145c74cc76"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.47.tar.gz"
    sha256 "00b53f77a888bb045330a2454f2e02c3eca47e875d988173a7d20c383992c798"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.47.tar.gz"
    sha256 "ef7433ee053f0ce3a44080dd301f2374553cd353cf761a78ffb6d05cb9420e6a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
