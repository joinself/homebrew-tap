class SelfSdkAT0800-9 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.80.0-9"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-9_darwin_amd64.tar.gz"
    sha256 "f91f8008e4d62581d6560f2246083c0620792f407daa7478450e6e66181785f5"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-9_darwin_arm64.tar.gz"
    sha256 "bed6bf5982efc73eb134b87925cd186e54b96ef2369eb2c8047e23bba4e88bc2"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-9_linux_amd64.tar.gz"
    sha256 "e654a20bbad56522c5e71bd52828c03bf9d0281a39c6169a81906b7bf71c4905"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.80.0-9_linux_arm64.tar.gz"
    sha256 "946c4dbc0d5e3e43830d98f6b3721f903e53189e7e7d5219fde4ee19b9d4ee00"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
