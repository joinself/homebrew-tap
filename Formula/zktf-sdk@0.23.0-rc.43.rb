class ZktfSdkAT0230rc43 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.43"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.43.tar.gz"
    sha256 "224825e76647e87c92e244f7ae30fa7d68ea6e7d502375c0ed8b18d2196a9367"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.43.tar.gz"
    sha256 "e937d7a9355c0e8b1cc1a1edb2e0107ad79c91a492b76a6d9b8df224abd1626f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.43.tar.gz"
    sha256 "7bf0d26ba1b009c4e7e81705d5f5ac45e49ae2300cfc2286eff7e4a27b91f60e"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
