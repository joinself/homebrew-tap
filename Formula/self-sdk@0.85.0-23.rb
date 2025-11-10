class SelfSdkAT085023 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-23"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-23_darwin_amd64.tar.gz"
    sha256 "34bd7c675f94d095b834713b4acfc039677b3c92c69e157792f2a84dd24cc197"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-23_darwin_arm64.tar.gz"
    sha256 "18dcd17432a7c6ec4611d0fa8a6209041771a709291e091f5dfdd757f12c903d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-23_linux_amd64.tar.gz"
    sha256 "453a20c06a435ed56cf462499593786ec2051940476db6ef116a2564ef5e2d68"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-23_linux_arm64.tar.gz"
    sha256 "2c9168b0b3d20a6d21cf0ce1546c1340950887847ae01c1c919291e2e4ed48a0"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
