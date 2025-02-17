class SelfSdkAT0650 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.65.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.65.0_darwin_amd64.tar.gz"
    sha256 "551770eedb642515ec896dded8849451a5a77732a3c2a4e2d738705b407de67b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.65.0_darwin_arm64.tar.gz"
    sha256 "bf59b5cfbf8924f7b755eecae90394c9ef0ddb9aa5f007c754524b180cc971b8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.65.0_linux_amd64.tar.gz"
    sha256 "92fd3e3dfffbd8c60059018b222c7fecbc81c80b8f072205a34f31468de39209"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.65.0_linux_arm64.tar.gz"
    sha256 "5fce2458eec813065c005a361c7fd28b23ffdaf14750e27542370d5d77b92a43"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
