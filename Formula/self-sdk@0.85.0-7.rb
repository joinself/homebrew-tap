class SelfSdkAT08507 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-7"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-7_darwin_amd64.tar.gz"
    sha256 "baff0415f6dd9ee2e1dc68510eda49337323a73c939f4514fc14be142cfe53ce"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-7_darwin_arm64.tar.gz"
    sha256 "ba442d292e8c6c543f8c38db6529fc6ca074a05121fbbed2de21f380c37bd7c7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-7_linux_amd64.tar.gz"
    sha256 "17d51441ba34073bb927a79665868aa19457ddf1df03ea5cc48a327b622e69c4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-7_linux_arm64.tar.gz"
    sha256 "f175ebfa2517fed0dd6bf266e25f1e2921aec935a3fec2b8fb0799aa1fb7af65"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
