class SelfSdkAT08509 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-9_darwin_amd64.tar.gz"
    sha256 "8e8b968e7157188671454ac3d21e08e04e062da7f2e4e592e8b48b621b48957a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-9_darwin_arm64.tar.gz"
    sha256 "664e78de10c7b4be98bddef9477eefe530e0aef5b222b5dd2cd3f6ed4e8f8e11"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-9_linux_amd64.tar.gz"
    sha256 "7728e8540c5836413defc7a0f00f7623371a50bb6733bf41b1638cfe2b2fb658"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-9_linux_arm64.tar.gz"
    sha256 "250bd8af8f47a5a7ac79768d4666839b7f96fa8da967ad0843ed4ae94e04b5b7"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
