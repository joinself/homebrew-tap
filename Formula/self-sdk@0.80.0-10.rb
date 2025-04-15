class SelfSdkAT080010 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-10"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-10_darwin_amd64.tar.gz"
    sha256 "33498abf5eac1ec251992f308f664a79fcc538cabff8e847a18e81e11898fac9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-10_darwin_arm64.tar.gz"
    sha256 "262ae4e1802df12528887c8977bcd9e65025ba80039fe5f9adf4c72c8e1ba453"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-10_linux_amd64.tar.gz"
    sha256 "5a346a261165fff22c2c82ebe47689d275975bb755f87f82802a053a21bc5dac"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-10_linux_arm64.tar.gz"
    sha256 "db50bad094c53f01b7f9bf2a43135ca9c35b61883705bbff4166c3a6ae67f97c"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
