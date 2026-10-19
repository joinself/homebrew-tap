class ZktfSdkAT00072269b8 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-72269b8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-72269b8.tar.gz"
    sha256 "9e5bb30cf412417f82a138b6e73bc35599770a988d860a80d28f178e7bf9a26c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-72269b8.tar.gz"
    sha256 "a9cfc5fe9d40c02ca0b4dca88ae915209ccb4cb5e692c8d56e64c13684af6e8c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-72269b8.tar.gz"
    sha256 "d98e4dcad7c7b8c23483ba840c9500880b99f8b52a77441d4d0e79487cad89ca"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
