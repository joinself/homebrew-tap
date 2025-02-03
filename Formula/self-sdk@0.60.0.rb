class SelfSdkAT0600 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.60.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.60.0_darwin_amd64.tar.gz"
    sha256 "3332735291fb372ab1ef2a4fe83fa9ed3b6026212d0cb940699c865c2fea66c8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.60.0_darwin_arm64.tar.gz"
    sha256 "31e714c310b9d20baa8e6b5c99825dca8961b674306970f1a26c92a3337f1d67"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.60.0_linux_amd64.tar.gz"
    sha256 "067873d8f8dec54894d30acbb4472f29e7c1ec1ff9eb1882e7329a656f19d7df"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.60.0_linux_arm64.tar.gz"
    sha256 "ca73ee48aaff9565bbdb89cff7367f7073de70a190177a1e22c3c8cfc27ff57f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
