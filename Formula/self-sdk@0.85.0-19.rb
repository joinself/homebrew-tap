class SelfSdkAT085019 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-19"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-19_darwin_amd64.tar.gz"
    sha256 "14cf3de5074e6ebc4160d75681def128274a425461f30103cb9631ed08e85ee8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-19_darwin_arm64.tar.gz"
    sha256 "7f32014caf6e3c50bebe12fdbd79e2a4f232a68561ef18b661e1866b2ad5df1b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-19_linux_amd64.tar.gz"
    sha256 "db78c42e320cdddb3d8995bb7cf4fb312b2006b8f2fe749baf76b868f3146a42"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-19_linux_arm64.tar.gz"
    sha256 "40e3d718842af028bc8bb67efc77b101ba8e35822ea2aa0c1db5ce85037ac6db"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
