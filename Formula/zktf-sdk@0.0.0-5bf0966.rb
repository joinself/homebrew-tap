class ZktfSdkAT0005bf0966 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.0.0-5bf0966"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.0.0-5bf0966.tar.gz"
    sha256 "8121c5f0aca5efcde7c8a6105f57c29d9b8ffa58bd943baeac9553accb6cbfad"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.0.0-5bf0966.tar.gz"
    sha256 "2456d65129d6b3c4f6714bb9c1810bb10f01b58650c794dce02e795b6ebae2ca"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.0.0-5bf0966.tar.gz"
    sha256 "383a533d2405583c615bc219b4b41a2ada503f07d1304d003b6d4b707f62005b"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
