class ZktfSdkAT0230rc18 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.18"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.18.tar.gz"
    sha256 "fdc7a482afff8134d2ec386d9452a4393c4ef7c7f1171bf58e38283ee3c2abc8"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.18.tar.gz"
    sha256 "5d38df0be44e8625e2a98cd9c288c766da35d96fadf3798b521823957cd99b73"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.18.tar.gz"
    sha256 "983dfd25ee9a650b179ba47c19b86c1873c8ac44d8c5ba567f2703a94ac62538"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
