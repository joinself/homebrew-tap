class ZktfSdkAT000ea6845b < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-ea6845b"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-ea6845b.tar.gz"
    sha256 "f7af1e5534ff370087c0fed0079b4a190ac47c54296746e999fb21627bccfe31"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-ea6845b.tar.gz"
    sha256 "ff687197aa583364b3a7587e8cf38c3fa032ad504b56ada7036798aef3ad0c94"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-ea6845b.tar.gz"
    sha256 "8b6fc4b268c7b57b3df047b35467d908de0c593c5430200263e60884ac4543b7"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
