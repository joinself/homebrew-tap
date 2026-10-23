class ZktfSdkAT0006624ee4 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6624ee4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6624ee4.tar.gz"
    sha256 "842b45caae8de72e62c7468424c8c885e550189e277f857efe1a435f1b423545"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6624ee4.tar.gz"
    sha256 "1d2241a56fdb4b20c64cd07d0de3d17c94c0a7c531e071b23a567b7c1c9b4ec1"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6624ee4.tar.gz"
    sha256 "deb604b65e7ad2a9fbd6655245ef8c930549f47b38ea945a5ff7faee2c6d390d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
