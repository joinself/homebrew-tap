class SelfSdkAT0430 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.43.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.43.0_darwin_amd64.tar.gz"
    sha256 "4b29ba9080e660b054a06fcd6f95cac907eee8380588a5f12f5429a20477003a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.43.0_darwin_arm64.tar.gz"
    sha256 "dcf81c4906d65635033149aee2f9aa95026545b95948c8195fc1bd35085955b3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.43.0_linux_amd64.tar.gz"
    sha256 "92cc1ec18104ea3f275aedf9ca117f8912de8d2e3feff0a081345ae830445d8e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.43.0_linux_arm64.tar.gz"
    sha256 "d839e8768728277c3b7604acab2338ed65862d1eca463c0d7a061c2ac34411db"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
