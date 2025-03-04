class SelfSdkAT0750 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.75.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.75.0_darwin_amd64.tar.gz"
    sha256 "5993f05aa27cc84b9f52bbec5351cdfe6f6c6c6b45f3d3acbd526dbe86e773ac"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.75.0_darwin_arm64.tar.gz"
    sha256 "d474b7dcf01fd8cfb591a017c79c7a79f4233982bb897764b9bd9a419d089b94"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.75.0_linux_amd64.tar.gz"
    sha256 "7ed343b1ff056974109878b7619d9abeaca1073cbc7b3096bd6b0d1c7d5c13ec"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.75.0_linux_arm64.tar.gz"
    sha256 "48528ed9e0386caf0d72b7c4cc9728523ca323cbb05c6afb0db9da4b95162340"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
