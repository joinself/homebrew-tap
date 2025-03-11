class SelfSdkAT0770 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.77.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.77.0_darwin_amd64.tar.gz"
    sha256 "dabf78c6abf5f6b032bf2bc964dfcb3f06ff726dd6a2a6909ca2778d4a79e169"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.77.0_darwin_arm64.tar.gz"
    sha256 "47213a8ea324a5faa09f9662f678a7887f2f6dc6679ed0b7e999e21c470101c0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.77.0_linux_amd64.tar.gz"
    sha256 "1bff4227bcf53d0265d623f56da84d2220df4fb1edbcc90ba7e337327eaef5c2"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.77.0_linux_arm64.tar.gz"
    sha256 "d72454052a12fada5a73a186419c5b3844b8fa28418a1a4a4a6095eeeecc5fab"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
