class ZktfSdkAT00006f067a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-06f067a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-06f067a.tar.gz"
    sha256 "db853b9d62ed03a55554514c3578e44808719e95e2ac8148a4a015c671bb5d43"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-06f067a.tar.gz"
    sha256 "95597f81caa7f714f888473f1e6c637a75147a23ecdbf31250659cbd7e07ea73"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-06f067a.tar.gz"
    sha256 "6da4c647a464a5290c56df9a95126e045feb47d03d6815a57c4946e6ac6191ae"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
