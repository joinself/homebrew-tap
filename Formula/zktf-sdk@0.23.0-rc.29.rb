class ZktfSdkAT0230rc29 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.29"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.29.tar.gz"
    sha256 "7c947ffce22729ed6d571f4213750dcec159cfbbc129504f898bc04a8119c26c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.29.tar.gz"
    sha256 "7d1ac5762096d0b9fa85504eac87029566b17fb170d7440ef188074227a42203"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.29.tar.gz"
    sha256 "44e1ac05d346aec6ea49430084e741ec3447570dbdd44ac61074e8a6759f46c4"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
