class ZktfSdkAT0230rc32 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.32"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.32.tar.gz"
    sha256 "f96369c3838df6eec6fb0b61e97ffc0a54be15b87cb562c0d27d9e57be809c27"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.32.tar.gz"
    sha256 "c92f85477ea146c791ecaba251fa801c9247bdd415f115eeeaa091f35b047c35"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.32.tar.gz"
    sha256 "65898f3eaa0d7eb067ea8d3189d822198521d55d20330e6bf8ba45e57eeb694e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
