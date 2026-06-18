class ZktfSdkAT0230rc3 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.3.tar.gz"
    sha256 "dfb9803b6050d9ba1af0fc46f4630ed24fae68a36d11ceebb9ab3af782def9bc"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.3.tar.gz"
    sha256 "027406d3a69cd89e284e18becac9411eab138bce72faa7f9ec9f246dd4d800b9"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.3.tar.gz"
    sha256 "dd21be4d2f796cd427e22383e2ab7e214bbd412b3a94ba0bf6de772347a16884"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
