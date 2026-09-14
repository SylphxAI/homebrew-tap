# typed: false
# frozen_string_literal: true

# Official Sylphx CLI formula (ADR-4437).
# Install: brew install sylphxai/tap/sylphx
# Upgrade: brew upgrade sylphx
#
# Binary SSOT is Rust sylphx-cli from GitHub Releases tag cli-v*.
class Sylphx < Formula
  desc "Sylphx Platform operator CLI (Rust native)"
  homepage "https://sylphx.com"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SylphxAI/cloud/releases/download/cli-v0.3.0/sylphx-darwin-arm64"
      sha256 "c57ca83018b5efc0d996b332488c9a2696418b6835adf1ac19ef70554eb75a51"
    end
    on_intel do
      url "https://github.com/SylphxAI/cloud/releases/download/cli-v0.3.0/sylphx-darwin-x64"
      sha256 "b858d5c55c7c9efd01e6ae80924a975021db0ffb26ff271d48c9d11e5401574f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SylphxAI/cloud/releases/download/cli-v0.3.0/sylphx-linux-x64"
      sha256 "8130fcc73d10fc0872b650826c96dca0ba1198205b6c991d11bca3f25aa7455c"
    end
    on_arm do
      url "https://github.com/SylphxAI/cloud/releases/download/cli-v0.3.0/sylphx-linux-arm64"
      sha256 "ab079d1a4bc3b3f73de534bfd111a1559fd2bd83b1a9f0abe29f3240e4ffb406"
    end
  end

  def install
    bin.install Dir["sylphx*"].reject { |p| p.end_with?(".sha256") }.first => "sylphx"
  end

  test do
    assert_match(/sylphx|0\.\d+\.\d+/, shell_output("#{bin}/sylphx --version"))
  end
end
