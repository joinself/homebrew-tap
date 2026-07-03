class ZktfSdkAT00013d36eb < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-13d36eb"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-13d36eb.tar.gz"
    sha256 "9c2679d887b57e961a0dcf5a0a57f8d36834c98b28e87a581f1fd50d07237568"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-13d36eb.tar.gz"
    sha256 "32e7908dca956bd4e7b8ac299ecd442722470de1059adbce879db96108b603d6"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-13d36eb.tar.gz"
    sha256 "c5a87b47b2cfcb2c89a8790631f53f830e9fa6cdebffb020a500eafa37a9300a"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
