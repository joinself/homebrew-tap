class SelfSdkAT085053 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-53"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-53_darwin_amd64.tar.gz"
    sha256 "d5012c3665fce200d1de057e74bc537a1d170097c886bbd723842aff6e67cae4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-53_darwin_arm64.tar.gz"
    sha256 "efadde0451a2766629e0bf7f58599b09bef7a78c440a26ed70b4cc0020acee6d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-53_linux_amd64.tar.gz"
    sha256 "8f9c72ee423d1670bac2a6f5abe64fb2c01e6ee7af82f60c35eced120e1133f4"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-53_linux_arm64.tar.gz"
    sha256 "dbde9555f79efd71a55af78617d9a108229f4f5b51bd3b7dfaedfae4b754a574"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
