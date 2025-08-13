class SelfSdkAT085011 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-11"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-11_darwin_amd64.tar.gz"
    sha256 "040ad8d37999de9223d2fa0b7b7d7ef8fae0a625f6389ab03d286c47c86754d2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-11_darwin_arm64.tar.gz"
    sha256 "ea50f79da714dcefd61fa5ba17324e26750956a76816ceee6499a960cda45cf4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-11_linux_amd64.tar.gz"
    sha256 "8882d22a4806e27309af0e3dd5472f9acb7154ee61ca8ceafe4d26ad74c01c7b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-11_linux_arm64.tar.gz"
    sha256 "3648a07fec14ea415a9228b5c5d695c92701acd9d66f8bdb93b49880ff3c7a3e"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
