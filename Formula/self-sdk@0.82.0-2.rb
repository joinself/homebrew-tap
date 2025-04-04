class SelfSdkAT0820-2 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.82.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-2_darwin_amd64.tar.gz"
    sha256 "5d4543e6fa339949a057d2f01494387d33a281f9f01184e4fedbc7f60eace2ab"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-2_darwin_arm64.tar.gz"
    sha256 "71dedef4b44ed2795998893468908680c9b8d12337227bfd8f93567a46c946a6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-2_linux_amd64.tar.gz"
    sha256 "1ae87cc70c61dd4cf870d92beb0974dd9074032cb66eea7382220b4031907f1a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.82.0-2_linux_arm64.tar.gz"
    sha256 "57a43fb041413d92bf696b23747cdc5c03b57cb7b67ca08778afc2a65d0eaef0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
