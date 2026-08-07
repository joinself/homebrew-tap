class ZktfSdkAT0230rc33 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.33"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.33.tar.gz"
    sha256 "47af5cdfe5d184409f8fede42ae665a5456e75613d120a345dc1951f90463b7c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.33.tar.gz"
    sha256 "c46197eea1cafb483ffa5900a4fc18cc3d8597307e59ab6fe70c3cb0875f0863"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.33.tar.gz"
    sha256 "a488f0149b351a0c63771adc1c9e4a156996d2ed04f58b74d19d7ec7c80ab823"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
