class ZktfSdkAT0002113dba < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-2113dba"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-2113dba.tar.gz"
    sha256 "0e4061a193995fc62e48a3dd1cc657a7b4ab8af1d58838285f2abe4d4fe16884"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-2113dba.tar.gz"
    sha256 "f398459f82ea14caa63268a20b78bfe105b0e23fed55a4f8da7fe77bebf2f547"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-2113dba.tar.gz"
    sha256 "d7e9673014c4278eee3e927088b3bfe0701d101d3ba7539b5aad680b71ce6e66"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
