class SelfSdkAT085039 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-39"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-39_darwin_amd64.tar.gz"
    sha256 "81cb8f7e195db365897703890cb7e0f7a356e3d49d192ac763466d30ad733038"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-39_darwin_arm64.tar.gz"
    sha256 "0f8166dce2e17c3093122d976e5a5a28aed5901b059b7daa084f7162e388a310"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-39_linux_amd64.tar.gz"
    sha256 "2836248c8228aafe925c138395c9f4c50e67fefe51fa1a5ad0d9bc75ed3a6b2b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-39_linux_arm64.tar.gz"
    sha256 "74310751d659e16d8a69f2e3e76fd52eaa9adaf3b6379950524853cc739f47b1"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
