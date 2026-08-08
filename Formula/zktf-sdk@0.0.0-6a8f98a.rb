class ZktfSdkAT0006a8f98a < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-6a8f98a"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-6a8f98a.tar.gz"
    sha256 "15a7d2098c36c8736a8bf99b298f9a9266480626c0f612f64058c58890c9bc09"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-6a8f98a.tar.gz"
    sha256 "155f05ba28c96dfe37398817bfd39a61bf336f2028911d63cfa8bd4164482b7e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-6a8f98a.tar.gz"
    sha256 "4d0bfbbeca603c11778bfe0f2455b3fed480815bcce527a24fc691efaf4e1806"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
