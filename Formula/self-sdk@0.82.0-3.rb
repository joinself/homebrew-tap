class SelfSdkAT0820-3 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.82.0-3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-3_darwin_amd64.tar.gz"
    sha256 "a0b8e1eda9c4e95de3033d87146ec8211b966b975527eea422feaaf9c33287f8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-3_darwin_arm64.tar.gz"
    sha256 "b75d803c9d657037614c1b56e5fc4bd5aa9a781da301e8201c391a6271adf42d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-3_linux_amd64.tar.gz"
    sha256 "2c57a3e06c971ba0887e014463dc769ddf23735181c04b6c60d4a5f6ba411676"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-3_linux_arm64.tar.gz"
    sha256 "31def71ace8e709cbfc5c8140a8dcec44ef68a436f28fa40f637cf84098a021e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
