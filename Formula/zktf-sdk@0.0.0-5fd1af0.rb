class ZktfSdkAT0005fd1af0 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5fd1af0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5fd1af0.tar.gz"
    sha256 "ad4c241e14a2acf91f3a92e0679fa7fe733c3a47cd90412f7f7fa4c1e1eb2899"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5fd1af0.tar.gz"
    sha256 "1727134d6db76624cbcdbaaef03838e3a3444a59d8cba288fc2d9a9da9ba816a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5fd1af0.tar.gz"
    sha256 "b9a3a04183a4c7170e72879c32c2d46be032236908abd90d60d4609e213ade31"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
