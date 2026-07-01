class ZktfSdkAT0230rc7 < Formula
  desc "ZKTF SDK"
  homepage "https://www.joinself.com/"
  version "0.23.0-rc.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-apple-darwin-0.23.0-rc.7.tar.gz"
    sha256 "676204f36f920b7e6b1aa7f2e3337403ebb19db8fee648b95862f6b2e97e689d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-x86_64-unknown-linux-gnu-0.23.0-rc.7.tar.gz"
    sha256 "5e7dfac23e89bd0e29c07fc64c5ed98bfa887683cd65aac31dcf91605e1d3b3f"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sdk/zktf-sdk-aarch64-unknown-linux-gnu-0.23.0-rc.7.tar.gz"
    sha256 "ca1e4a6bdbbff974cd488ee91fd624ee106c98da0806cddd2f16d191da6fc4aa"
  end

  def install
    lib.install "libzktf_sdk.a"
    include.install "zktf-sdk.h"
  end
end
