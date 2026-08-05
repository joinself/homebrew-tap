class ZktfSdkAT0001cb0be7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-1cb0be7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-1cb0be7.tar.gz"
    sha256 "237f06ca543b3863d8918bec85f97ff94be05081b785f341c39e526ddd02954f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-1cb0be7.tar.gz"
    sha256 "ee0ece23ff1b404c510c768d1b8bd8828de3c8732ef428be29d3d58e7807e6ff"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-1cb0be7.tar.gz"
    sha256 "92d4d3affcfc1885536fa61a08183da904aa96b7b11b5f4d50bba134f8f37c81"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
