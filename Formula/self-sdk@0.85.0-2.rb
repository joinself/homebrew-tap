class SelfSdkAT08502 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-2"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-2_darwin_amd64.tar.gz"
    sha256 "dd984911c2fa0cc1196d412921c8337583ce584b07baaba3c5f0138163acb4da"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-2_darwin_arm64.tar.gz"
    sha256 "bfd8b6395c8d6243c72166f17622951025aea7a091749e9201ba1fd5d208d959"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-2_linux_amd64.tar.gz"
    sha256 "1e1c63f5d247ba6b6cdb1ac2ff4047e18c15ad2d0eea4d2196d97bd590268b83"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-2_linux_arm64.tar.gz"
    sha256 "de1206722b7a93c81dd2ae2667dec24fb380e6a2d408f4a983209894375443db"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
