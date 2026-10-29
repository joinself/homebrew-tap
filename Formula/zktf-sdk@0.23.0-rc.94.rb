class ZktfSdkAT0230rc94 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.94"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.94.tar.gz"
    sha256 "c695ed20ae3f33a2a23b280040eb965eae7921b9b4c6311d6c5f600577218570"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.94.tar.gz"
    sha256 "e223ee2241d1f56bcb115765ba6dec68d69f0991ccb677e60b4d1554f2fb4391"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.94.tar.gz"
    sha256 "8faaae8f41503462d58cd69292d4e28e0688043b9c189647fc6bbe321ad645b6"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
