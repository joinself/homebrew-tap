class ZktfSdkAT000e0d2e5d < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-e0d2e5d"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-e0d2e5d.tar.gz"
    sha256 "ca23496aad349236df7b40cc72f28ec847b82a744a895353d2121c615db6010b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-e0d2e5d.tar.gz"
    sha256 "e314771988647d8d03f02713e6bba470be85fc37c4b6d7e564fb00804d1f7df6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-e0d2e5d.tar.gz"
    sha256 "9f8b40d8e9e91fb23eee17f38719abb00594b09bde2aebabac9e90b951e7a88a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
