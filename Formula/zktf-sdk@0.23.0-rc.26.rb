class ZktfSdkAT0230rc26 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.26"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.26.tar.gz"
    sha256 "a14c643110983e01b0577387842e04f99133a58d8fb22ae6195f547883fcf3e4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.26.tar.gz"
    sha256 "11413d392296517b8550514c27e76512d022296a00ebb34ee06c6608c04ba175"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.26.tar.gz"
    sha256 "4859cb834918bcfc8de04938cbf1d7a1e150b645a98fae9c26020831a1cd548e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
