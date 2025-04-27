class SelfSdkAT08302 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.83.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-2_darwin_amd64.tar.gz"
    sha256 "295d80b4200d6d12106f9299d1ce325494e878e30d3d5a330cd0e51e264cbb0d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-2_darwin_arm64.tar.gz"
    sha256 "044b1736d72cd234dedcc981e42baab194a4b04a5c724f414d020c17c1236761"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-2_linux_amd64.tar.gz"
    sha256 "df11200e39efb727c40e63007de4147aaff058f42daa2bfd4f28fa79853a121d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.83.0-2_linux_arm64.tar.gz"
    sha256 "f2463fd259a8743425e18eeddef402b64fed3afcda63d3d7fb2f882d66e63b2b"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
