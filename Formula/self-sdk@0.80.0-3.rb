class SelfSdkAT0800-3 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-3"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-3_darwin_amd64.tar.gz"
    sha256 "e0c5f0bb6bb7802f2e7c7ff1289cb6fc819354116114d9ab04c5a4dcbf7af5a6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-3_darwin_arm64.tar.gz"
    sha256 "59f358433166b897b6fb61cda9d558f219ab344099996f7fa37cb2307bf1a5d6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-3_linux_amd64.tar.gz"
    sha256 "b7d2192c91d6b3651159720e2fbd509b004a6ef069badcb3c648e82821063bae"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-3_linux_arm64.tar.gz"
    sha256 "ecfe66e6528723bbc3f5934155cc40aece0aede5981489cc9639c959e2befcab"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
