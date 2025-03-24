class SelfSdkAT0800-2 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-2_darwin_amd64.tar.gz"
    sha256 "f0a0c5ba5c24882294c9be6e6d6e6412a9a34066dc5f67f79ffc19c2c65e0e57"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-2_darwin_arm64.tar.gz"
    sha256 "8ecd9c20711c44e98b4d15303121ad8faad1bc0b35f1a3b1c787b88cdd04777d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-2_linux_amd64.tar.gz"
    sha256 "6c09fd9f801e5b9e549061c5ca054e5c51b8045a20b379ea299d3baaae49a972"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-2_linux_arm64.tar.gz"
    sha256 "cc71d7afeaa2f79bf2128605f9daa9f845e0eb66dcc569b781d47f177993dc3f"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
