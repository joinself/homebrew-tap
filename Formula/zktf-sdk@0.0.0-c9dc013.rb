class ZktfSdkAT000c9dc013 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-c9dc013"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-c9dc013.tar.gz"
    sha256 "b9320ff9a6bd4df334ddc83aaa7b6474d48da1049634390f3764c428122a16c2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-c9dc013.tar.gz"
    sha256 "a206faaca18d921cb577d3fe0779f691addb93cd0941697d28d29369f7b7c326"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-c9dc013.tar.gz"
    sha256 "0df6102e5245fe9f8727f53ee2686873de3caa660314d74fce01a57046aca0ed"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
