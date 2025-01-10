class SelfSdkAT0530 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.53.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.53.0_darwin_amd64.tar.gz"
    sha256 "b3f9c5a4260dba85200969ccee7c9e80c60cef25c35030a94d2be834cb07caf7"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.53.0_darwin_arm64.tar.gz"
    sha256 "0101ee511820584fca21f27dc702a3825d1ae4d636b0f73947e6152b5d7173a4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.53.0_linux_amd64.tar.gz"
    sha256 "57518d1eb41cf4336a3f60e21b68e7dd6edb238240d23ea0aa6833eaf2f9a806"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.53.0_linux_arm64.tar.gz"
    sha256 "156466e18f319f6dfbb30ff7dbe367c693b2944c819c60e3dc6de0246277cd5c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
