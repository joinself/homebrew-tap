class ZktfSdkAT000795b876 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-795b876"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-795b876.tar.gz"
    sha256 "62df254d21f14f91cd191f0b37d90bfa708b46ad7477a27e56be0c749c431562"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-795b876.tar.gz"
    sha256 "636e5835167020d65a5f26b990bef6a3c9b173f29ced9c6ecf356c014c3f10f2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-795b876.tar.gz"
    sha256 "4370f21288be60f015c66f6b407a46695d78fccd88071132c41780a706397084"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
