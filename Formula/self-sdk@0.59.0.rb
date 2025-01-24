class SelfSdkAT0590 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.59.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.59.0_darwin_amd64.tar.gz"
    sha256 "be190b714710c4e2b61ac84f794a2d7063a7492e250e4b0316fccc88a7f6ba06"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.59.0_darwin_arm64.tar.gz"
    sha256 "8871f883a3466c3a6177ecb65d239dc93698afddd392787b4b71ce93d17ff759"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.59.0_linux_amd64.tar.gz"
    sha256 "29afdaacb046e061c2d6b7581ca7cd1397796ea2f585365788c433b2e86b9861"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.59.0_linux_arm64.tar.gz"
    sha256 "c9fa63b6ac635ec1a875b19b66c8073cc24c5a822a66fa4cd18a1dc492b89132"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
