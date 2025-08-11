class SelfSdkAT085010 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-10"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-10_darwin_amd64.tar.gz"
    sha256 "12855962bf963acf1eb3b3dead3a2b28145cc7ef0731dcdf6ec646c80f673aa0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-10_darwin_arm64.tar.gz"
    sha256 "417be599dcd8516fa2371b9d5f47a8b148fffeef9b9d125055d1f374fb32d602"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-10_linux_amd64.tar.gz"
    sha256 "954869ab0b6cee8a2d13af26a3516eb4cc6a25eb6213e59219329c8fda59581c"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-10_linux_arm64.tar.gz"
    sha256 "828f284231b1360ab7ebdd99fb63fb1f022d6f57cf46618300fed03b7bb1516a"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
