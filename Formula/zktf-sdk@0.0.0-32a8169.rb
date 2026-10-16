class ZktfSdkAT00032a8169 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-32a8169"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-32a8169.tar.gz"
    sha256 "eee278225da2f5e4f0234c73a89dff1be6730d156f36b5ebfc44a220015bcdea"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-32a8169.tar.gz"
    sha256 "715d02050deecb95ad8d4cf77cba558208d35ca087cf1cda71ded6a9fb5a2fad"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-32a8169.tar.gz"
    sha256 "e5a95407ceec9e692fc4bdd74da21ed7e20b8f8ea03b8b3afcee8145a5ada006"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
