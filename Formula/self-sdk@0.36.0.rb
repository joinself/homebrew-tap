class SelfSdkAT0360 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.36.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.36.0_darwin_amd64.tar.gz"
    sha256 "030cc59842c48827ab15116d6ccdc1be0afc9bd4f089ea719854423134395cf0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.36.0_darwin_arm64.tar.gz"
    sha256 "f38b57e4ff9cf25ea13270a153f6d54823d53f19a5e2258d12c3008bf325ee9b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.36.0_linux_amd64.tar.gz"
    sha256 "dd8e9cbec7ede9a8f327a6ff07c93558bcba73b0b627827597ad43570c755804"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.36.0_linux_arm64.tar.gz"
    sha256 "e045018609afa1357d9593b20bcf350f11d85ae043a0ed19b697d582b774086f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
