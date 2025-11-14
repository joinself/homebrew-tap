class SelfSdkAT085027 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-27"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-27_darwin_amd64.tar.gz"
    sha256 "c1b836277f374d4b7f7c6393c8078a47284726f5eebb54a9272479614c7e01b8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-27_darwin_arm64.tar.gz"
    sha256 "115b0b270f3b2864fe449f7aff39291042de735a369f3263685e74c1e82bd222"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-27_linux_amd64.tar.gz"
    sha256 "13b50860baec1ce899a4ea63daa3bb6c72477da160b1381e8fd87f4fc130a04f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-27_linux_arm64.tar.gz"
    sha256 "d1eb99de977d75e725d8ec745e6a5557439056acf3a97cd340a7f93c912060e9"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
