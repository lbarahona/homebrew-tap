class Argus < Formula
  desc "AI-powered observability CLI for SREs"
  homepage "https://github.com/lbarahona/argus"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.3.0/argus_0.3.0_darwin_amd64.tar.gz"
      sha256 "396a0527d6b954df63b5ead42471a341a8e8b07980330a6c35309bb089a3b626"
    end

    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.3.0/argus_0.3.0_darwin_arm64.tar.gz"
      sha256 "5184a216088fe7473185f7c3947316ab6c3eafd73c90a34eb54168252ef40505"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lbarahona/argus/releases/download/v0.3.0/argus_0.3.0_linux_amd64.tar.gz"
      sha256 "179e22890c222db1ed3be33101dd7171358447683269bf22913f6e8b2292f6fb"
    end

    on_arm do
      url "https://github.com/lbarahona/argus/releases/download/v0.3.0/argus_0.3.0_linux_arm64.tar.gz"
      sha256 "4459bd6d4799450daca0156ec9720940e12cfe74867d7ac80e8f7beaa3c2dc14"
    end
  end

  def install
    bin.install "argus"
  end

  test do
    system "#{bin}/argus", "version"
  end
end
