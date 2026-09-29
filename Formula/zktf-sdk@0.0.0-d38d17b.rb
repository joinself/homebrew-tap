class ZktfSdkAT000d38d17b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-d38d17b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-d38d17b.tar.gz"
    sha256 "c9d74e2169fa6b93e850e1ce0be3aac075390460d833cd4df03106f6264d284a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-d38d17b.tar.gz"
    sha256 "d1f827a6a8d483ef09a304f5ab7190a7d57ce277fdda5b6b3b5d9e886c63d84f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-d38d17b.tar.gz"
    sha256 "fb939d5a2aba7ce08406a12c76fdb94d45b5083ca37797aa4af75cd02c291c30"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
