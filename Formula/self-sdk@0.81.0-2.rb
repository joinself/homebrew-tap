class SelfSdkAT08102 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.81.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-2_darwin_amd64.tar.gz"
    sha256 "13c92e4495bac5b874de89703f3f8d1a5939224fa6b0d585300efb9a20c1332f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-2_darwin_arm64.tar.gz"
    sha256 "dbc533490fda072ceabfd56ef372d1cfe0b7c5a3f162818703ed12afb48c6819"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-2_linux_amd64.tar.gz"
    sha256 "cd2e211b5d08086986c61e60250cf585a3b0e3ab98783536a53d126795e7c118"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.81.0-2_linux_arm64.tar.gz"
    sha256 "6cb70bfa998399b719c140a32588c2e8f475772ae15f82b85cb6da383c259889"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
