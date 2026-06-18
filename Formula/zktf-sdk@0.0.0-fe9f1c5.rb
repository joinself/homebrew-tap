class ZktfSdkAT000fe9f1c5 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-fe9f1c5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-fe9f1c5.tar.gz"
    sha256 "dfcb0c9ce434abe0a53dc5ed0736d82bb04ba9fd84a50b4081e67f9b45dc9ace"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-fe9f1c5.tar.gz"
    sha256 "0cee7b2d7877f0f568c0cdbb8ca6ca1ad0886c448266203bb394ed1a524a3d03"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-fe9f1c5.tar.gz"
    sha256 "81b8787ab8a8e520cfca9fcd3bd7c415007f64411b1668ad7e38a89245146a6c"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
