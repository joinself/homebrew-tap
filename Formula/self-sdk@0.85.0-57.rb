class SelfSdkAT085057 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-57"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-57_darwin_amd64.tar.gz"
    sha256 "4f47b16b8b517328e90e03941c96664e0bc9456f8650c4a7d19e8b2672662f46"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-57_darwin_arm64.tar.gz"
    sha256 "f97907268484e48aa55343c4b8769b063d9eba7ce95cc19bb01e73306c75fc9f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-57_linux_amd64.tar.gz"
    sha256 "a381862e71315d05ed7689c2d40f5589722765f72386cfa3c92dbd1c0c55172b"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-57_linux_arm64.tar.gz"
    sha256 "7eb3ded784e7ce905b820f8e28bf0e015942c559c0b82736a2b724f4f72aeb4c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
