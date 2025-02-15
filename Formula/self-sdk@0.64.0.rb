class SelfSdkAT0640 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.64.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.64.0_darwin_amd64.tar.gz"
    sha256 "16359589a9584554f253c6a463e5d3e7ac205a57639e4536f7f534fcfd82ff59"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.64.0_darwin_arm64.tar.gz"
    sha256 "7664ae26b4173840c36a19ee61285721c551f1fa1ea6ca36431a0f7d81fcfe53"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.64.0_linux_amd64.tar.gz"
    sha256 "4fb94a5aefe8f04b52edb8e66f54c15a308319a5a59d9f3a0f8f87c094289a34"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.64.0_linux_arm64.tar.gz"
    sha256 "f17da76150cb8ca4efdc4fe15aea6951cbb9a5a4f69cf747e0123cb97e399878"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
