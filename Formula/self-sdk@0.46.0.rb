class SelfSdkAT0460 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.46.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.46.0_darwin_amd64.tar.gz"
    sha256 "2022b26475fae0ae4ffbb7f3e2ce93e506da18efdc493b6b50cb1a8b46021dfb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.46.0_darwin_arm64.tar.gz"
    sha256 "4755884e40931dc7b92517108ea722813f55b25f82384b108a15ad99a45de9ad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.46.0_linux_amd64.tar.gz"
    sha256 "08fd46168e59fe11fc2c2b434c7749539a5625eeeb8c972450b27e00ae9a4967"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.46.0_linux_arm64.tar.gz"
    sha256 "de5d90cbeb6dd46873d72790520db3e310cf64de4f270d732487ef88b59a10dd"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
