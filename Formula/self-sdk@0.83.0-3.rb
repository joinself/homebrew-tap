class SelfSdkAT08303 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-3_darwin_amd64.tar.gz"
    sha256 "d7191e8aaa1c926d41690b17ef82bfb00d01758a413bb3a3291092902f7c28ea"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-3_darwin_arm64.tar.gz"
    sha256 "f271278e7d44f2c7a65563cc2abc6c1baccae72be43f720a68492f3128e22377"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-3_linux_amd64.tar.gz"
    sha256 "cb8a998114b0c2f18022b855561e13217cdedd0dc3b3f47f97120592d6697459"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-3_linux_arm64.tar.gz"
    sha256 "5d0e89b2104f448d75dbc5583ab5135bc60a86f230c7c79cdcdc8373da6c69a3"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
