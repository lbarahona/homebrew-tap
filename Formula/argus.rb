class Argus < Formula
  desc "AI-powered observability CLI for SREs"
  homepage "https://github.com/lbarahona/argus"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_darwin_arm64.tar.gz"
      sha256 "a9b1107f5b36d55db7cbb9773982b79d84402de0249bec170a085cd8c953a71e"
    end
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_darwin_amd64.tar.gz"
      sha256 "bf549890cf87110c93696f734577213cedfe661c9ae8ca851a5b3aa5e1b895c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_linux_arm64.tar.gz"
      sha256 "10d95b776bac743a96c9b7b22b07ce0c5392e15c07f9d33c0466282371a6575b"
    end
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_linux_amd64.tar.gz"
      sha256 "954de6e8f44ec1daad4d333edf9276a63c80435f5f824faf9696181d1c327b7c"
    end
  end

  def install
    bin.install "argus"
  end

  test do
    assert_match "argus", shell_output("#{bin}/argus version 2>&1", 0)
  end
end
