class SelfSdkAT085017 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-17"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-17_darwin_amd64.tar.gz"
    sha256 "4da94bbbbc5a504686e524fb398c4330e64f1e2d89e604fa4918f3d6b43b925c"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-17_darwin_arm64.tar.gz"
    sha256 "57503a3b9399c39014bb29e6c9270e65aafb334b6a636bcbe0aa3c5d3287c9fb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-17_linux_amd64.tar.gz"
    sha256 "316e3f150c13bd06ce3475b2479c12a51a6eca01d070e04050afdc2b2bed8e89"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-17_linux_arm64.tar.gz"
    sha256 "11a645455eb9d6302a01c8701b16d8dadd112834254dc1afe1a3ed3d5c351ded"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
