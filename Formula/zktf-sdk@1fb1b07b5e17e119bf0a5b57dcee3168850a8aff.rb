class ZktfSdkAT1fb1b07b5e17e119bf0a5b57dcee3168850a8aff < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "1fb1b07b5e17e119bf0a5b57dcee3168850a8aff"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-1fb1b07b5e17e119bf0a5b57dcee3168850a8aff-darwin-arm64.tar.gz"
    sha256 "b5254d9613f03062f1ea98787ac9eea8366bd19ebf8d95944f1b382cd2795ae6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-1fb1b07b5e17e119bf0a5b57dcee3168850a8aff-linux-amd64.tar.gz"
    sha256 "432aee49b8b39c7e21f80c555e4844e1fd049e06a11583819db8b9329771b69e"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-1fb1b07b5e17e119bf0a5b57dcee3168850a8aff-linux-arm64.tar.gz"
    sha256 "cc5f785ca4676ed617a49e6a74bf78648f032dbb65df5699fade4c5aba2366e8"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
