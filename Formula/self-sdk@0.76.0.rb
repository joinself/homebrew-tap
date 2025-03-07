class SelfSdkAT0760 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.76.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.76.0_darwin_amd64.tar.gz"
    sha256 "9fc741757e6bd9ab03a3dec6d77e03509708d8baf5361a264cda44ce8df729cf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.76.0_darwin_arm64.tar.gz"
    sha256 "e081199fcb0ff7786cd3213b5430f4ac7a1c750ccd0f6967473e23d4576282c6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.76.0_linux_amd64.tar.gz"
    sha256 "93217359467fc6f845c140fc1d139d598a8457a820380464c716612e6bf266ee"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.76.0_linux_arm64.tar.gz"
    sha256 "6d28215584e8204981127ff9f47b74b7ad5ba130c9f6141a59af7562dc622512"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
