class ZktfSdkAT000dbecad3 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-dbecad3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-dbecad3.tar.gz"
    sha256 "39c4f0924d95c2fb192d3fda6b18161f87e69c6f14d053fd08db597ef9dc18c8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-dbecad3.tar.gz"
    sha256 "b7bdcb455dd2fbcdd27479bc372a58137800e33f6d9e13a1dc6ea7151d291807"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-dbecad3.tar.gz"
    sha256 "2a8cc6d55d62943f185977553948b154286325cbbd4a411bb5f75e4e3e7e33d8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
