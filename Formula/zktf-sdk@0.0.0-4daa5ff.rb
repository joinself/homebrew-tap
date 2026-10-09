class ZktfSdkAT0004daa5ff < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-4daa5ff"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-4daa5ff.tar.gz"
    sha256 "993ed08089a5685c547911ea60ed3b2447395098c47b5ab950a0c60b8b07f0f7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-4daa5ff.tar.gz"
    sha256 "87792edd002d1e144f03c3e09baf53c852b766c68b34bffdc2921fb662737138"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-4daa5ff.tar.gz"
    sha256 "8480d7d8ecf985fe40812f61a7c6d07b6956bf4890aa9d947312fe1faf9df020"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
