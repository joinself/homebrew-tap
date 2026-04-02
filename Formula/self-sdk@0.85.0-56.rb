class SelfSdkAT085056 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-56"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-56_darwin_amd64.tar.gz"
    sha256 "8be050f4f4838d08b08152b11396d266606f1f105b457521c9bebdd39c63c627"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-56_darwin_arm64.tar.gz"
    sha256 "2faaceae0c0788f8773ecb7f562ac2e0d8d859718fd8fd164e73d650325838cf"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-56_linux_amd64.tar.gz"
    sha256 "102233d95509b0f1f4793b41e6cad1e7ef8e4f9326ecc3ad3b9e84965d6c9f66"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-56_linux_arm64.tar.gz"
    sha256 "9411e69ef70964bdd650821b13b93a6f9f3778e89466cca5df9d97db44cbf897"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
