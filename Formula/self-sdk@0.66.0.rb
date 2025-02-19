class SelfSdkAT0660 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.66.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.66.0_darwin_amd64.tar.gz"
    sha256 "2b3896ad728fe5ce5e2387bc0e9caa559ea0c69f726ad82d9a2e04c7f3ac11b0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.66.0_darwin_arm64.tar.gz"
    sha256 "6d5ebbe713a068f3072500523b1c967e26c554bf2873bce9b16ea889c600d5ea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.66.0_linux_amd64.tar.gz"
    sha256 "ab04365493530c48bbae6053c2b2623d9848658558b6c9d104d52c9bbc5afaab"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.66.0_linux_arm64.tar.gz"
    sha256 "6c996920081dd8477da9dced7cb2ea26df9d093b006b548b882873eb28ad2228"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
