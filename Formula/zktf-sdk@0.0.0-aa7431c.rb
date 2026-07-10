class ZktfSdkAT000aa7431c < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-aa7431c"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-aa7431c.tar.gz"
    sha256 "a38e43570188b4dda5d23933d3f71d586de512e114b78348526c728011e3b5d9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-aa7431c.tar.gz"
    sha256 "70683f6f8156eec66e72c5aeda09f594048e4546ef36293589ebaf12428cad50"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-aa7431c.tar.gz"
    sha256 "39401c321bef806c3ac24f13fdac015718e124a59dbafcf2c73b4dfb8f69f819"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
