class SelfSdkAT085052 < Formula
  desc "Self SDK"
  homepage "https://www.joinself.com/"
  version "0.85.0-52"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-52_darwin_amd64.tar.gz"
    sha256 "6338f1f12864b9ba24c80b558c2f5eca23e68e0e679b2c22d25da1e50351ed44"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-52_darwin_arm64.tar.gz"
    sha256 "8f2178f5c446c87c7d648d7e84976b3d6f66521378fe32d0e8cf49c7857f606a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-52_linux_amd64.tar.gz"
    sha256 "0e61349d545dd611ea49b276bb0689c6e0c3c254df1fffc0ef41c1c2a70c8073"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/self-c-sdk/self-c-sdk_0.85.0-52_linux_arm64.tar.gz"
    sha256 "dd999c877dc6f125cdaed865c26db6f3129f1956dd7909ef9eff62d15100834a"
  end

  def install
    lib.install "libself_sdk.a"
    include.install "self-sdk.h"
  end
end
