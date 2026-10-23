class ZktfSdkAT0230rc86 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.86"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.86.tar.gz"
    sha256 "8a3393dd7053c62503095639b3de8d32a24ec52235eb42d9d61a12e9df2ac475"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.86.tar.gz"
    sha256 "158781046e54ac4ffcb0beade41c45f2604e6b71606125c27c12cb3f9a19a722"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.86.tar.gz"
    sha256 "a618a47649d7f4e7b51e393e7a87de6dde10c6b1051e745fb312381777080039"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
