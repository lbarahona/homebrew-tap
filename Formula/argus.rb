class Argus < Formula
  desc "AI-powered observability CLI for SREs"
  homepage "https://github.com/lbarahona/argus"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_darwin_arm64.tar.gz"
      # sha256 will be updated after release artifacts are available
    end
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_linux_arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.2.0/argus_0.2.0_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "argus"
  end

  test do
    assert_match "argus", shell_output("#{bin}/argus version 2>&1", 0)
  end
end
