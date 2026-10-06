class ZktfSimAT000a681915 < Formula
  desc "ZKTF Sim"
  homepage "https://www.joinself.com/"
  version "0.0.0-a681915"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-apple-darwin-0.0.0-a681915.tar.gz"
    sha256 "004d401cf5977af0cc33a90f92b8ef0f97f58a03ec0ca9c416968a370a8a4804"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://download.joinself.com/zktf-sim/zktf-sim-x86_64-unknown-linux-gnu-0.0.0-a681915.tar.gz"
    sha256 "808e7d164ca7bc32d983f28882a1ec7d58cf8fe0e0ffcbd8b0a9dab5fe14b73a"
  end

  if OS.linux? && Hardware::CPU.arm?
    url "https://download.joinself.com/zktf-sim/zktf-sim-aarch64-unknown-linux-gnu-0.0.0-a681915.tar.gz"
    sha256 "57d5b2a6debed8093cf4b46de4956fef1285733199ef8f49be42547a95b9777e"
  end

  def install
    lib.install "libzktf_sim.a"
    include.install "zktf-sim.h"
  end
end
