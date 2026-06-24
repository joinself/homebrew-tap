class ZktfSdkAT000b581385 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-b581385"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-b581385.tar.gz"
    sha256 "33f82bf7d43b68624a9e141f3bd5e08d2099edac4f2003bf46af1a68cdaec4b3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-b581385.tar.gz"
    sha256 "13baf85d21aefb654d20f85eec036c6a6590b2a52c955cb4b1a88e68a4d42fe0"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-b581385.tar.gz"
    sha256 "888631cc7f41b3e9d3fd4318394984a9b1f6e6f9320b8ee4905d5485870381aa"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
