class ZktfSdkAT00082e5d69 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-82e5d69"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-82e5d69.tar.gz"
    sha256 "a0fa5d10b536a0a30c7457de089c01df9f706b596f39ee216807a844c06a9073"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-82e5d69.tar.gz"
    sha256 "e41f656887849ee4127327acc1c61161046dce2f01679e194712634c200eb8e8"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-82e5d69.tar.gz"
    sha256 "fb64328462bf99b97aff1d7a03c16f45365111e7b82f1cb57c6747ff4fb6669d"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
