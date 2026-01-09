class SelfSdkAT085041 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-41"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-41_darwin_amd64.tar.gz"
    sha256 "a5cc67cc495e10765304459b6837a8c614a96c69370411f999a04f4a2fdf1ae4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-41_darwin_arm64.tar.gz"
    sha256 "de7ab1200f4518e8403c58b3cdbcdccb88fa66b28a3f17e5cc43029e44574311"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-41_linux_amd64.tar.gz"
    sha256 "7698fe8d07506ed41a72f7d62adf422cd9cd4b14a1d7dc5b5c4659ecee6bfb67"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-41_linux_arm64.tar.gz"
    sha256 "0a3d6649641c63763e60066ae13b41d93a175cdf71940033f9282f9e2726984b"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
