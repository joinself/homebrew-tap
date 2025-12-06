class SelfSdkAT085034 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-34"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-34_darwin_amd64.tar.gz"
    sha256 "13d890687a0ae326bb30b8e6180d7a7f53fccb5ad693c03a4bfb6fe43202e1e2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-34_darwin_arm64.tar.gz"
    sha256 "6195cafc5d4730ce908753dbbb47c6fc87dac6f103a8c076d7d224fa0520efe7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-34_linux_amd64.tar.gz"
    sha256 "d0698994a3d83ead6d3c27d01541987d41965182e6469966bd8cc6e9679db8e7"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-34_linux_arm64.tar.gz"
    sha256 "df78336539adde4e62536edbf1cf8426016c3f5dc0ad5f2689f7620cd22bd383"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
