class ZktfSdkAT000160f259 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-160f259"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-160f259.tar.gz"
    sha256 "983a7d4b5212d2640b3a73705abcf53649b95dc98da1a2784e27ea5da86dfe71"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-160f259.tar.gz"
    sha256 "2afbb572fcfe9dc27498465433efca9abc87f7e56a23b2979d78f98a65c6672a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-160f259.tar.gz"
    sha256 "3bc883a4f88b48fbc3943b12451fc1daefa5846755cb96eadd13fe4df5faa8f9"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
