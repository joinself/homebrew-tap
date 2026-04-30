class SelfSdkAT085058 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-58"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-58_darwin_amd64.tar.gz"
    sha256 "c37c6ebb134022d46989334138cdd2905a21a44c68ccdca342a6fec0fa3d8fbf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-58_darwin_arm64.tar.gz"
    sha256 "7bad73f71a474998291d07c409a2cd4769e49a799f78c58f506dcad9d8ce6296"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-58_linux_amd64.tar.gz"
    sha256 "f97975a3d08d73e341edd19a95037710ca1536dc66b0769984a96519ed8f1074"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-58_linux_arm64.tar.gz"
    sha256 "104521f39f1e8be378c7911031ad526f799657ebfad632ff36e65194630f12fb"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
