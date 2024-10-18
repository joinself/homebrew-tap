class SelfSdkAT0370 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.37.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.37.0_darwin_amd64.tar.gz"
    sha256 "341a8f9a960cf611d6f47124b5211e602d42fc2f76578569555b7038105a5459"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.37.0_darwin_arm64.tar.gz"
    sha256 "c3748e56573ad3f193a09ae32fdf1f29445e96ea224cf9666e14e4445a8aa919"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.37.0_linux_amd64.tar.gz"
    sha256 "a895b256b5c26558dc446dbc57cdce01b96c94df4f05d80b6d0c9da9fedfa79d"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.37.0_linux_arm64.tar.gz"
    sha256 "9127ba3f08f11498af5f3cb411a37ef8d96ad8bc9b5832117ddf9da0dcda3878"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
