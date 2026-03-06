class SelfSdkAT085049 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-49"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-49_darwin_amd64.tar.gz"
    sha256 "01e40ed7bd380f0e566a54006698dda6286e67bec52aefca311867442755404b"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-49_darwin_arm64.tar.gz"
    sha256 "e74eaf9d1d0d87e563c0d86d901b0b85fff28e4ace75658ab656169e8c69fb56"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-49_linux_amd64.tar.gz"
    sha256 "030a561d5780738415b0b55c2f9a38e19b7206c1b031645b6b318f22a95811ee"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-49_linux_arm64.tar.gz"
    sha256 "8e1723e6781fce11896ef2489bda64893626ca74663beb59564cba65ec4f5b12"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
