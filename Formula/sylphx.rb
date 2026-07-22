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
  version "0.2.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/SylphxAI/platform/releases/download/cli-v0.2.4/sylphx-darwin-arm64"
      sha256 "e5c11a8beb382782056ceefdc067cd842a8e5305890a7b7d051b64a1dbcfe2f9"
    end
    on_intel do
      url "https://github.com/SylphxAI/platform/releases/download/cli-v0.2.4/sylphx-darwin-x64"
      sha256 "9ab0f2a8dabae7692381bea4850ffffba949d31c94009c544882589a5917ab1c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/SylphxAI/platform/releases/download/cli-v0.2.4/sylphx-linux-x64"
      sha256 "ff5e830d2a6b7a9e24e6d1aa9da23346d3bde8284a4e5882d34050c88b5e7da7"
    end
    on_arm do
      url "https://github.com/SylphxAI/platform/releases/download/cli-v0.2.4/sylphx-linux-arm64"
      sha256 "1ef581d2113c02900be1f6542067afd066e1a18870845885289f560c15407a68"
    end
  end

  def install
    bin.install Dir["sylphx*"].reject { |p| p.end_with?(".sha256") }.first => "sylphx"
  end

  test do
    assert_match(/sylphx|0\.\d+\.\d+/, shell_output("#{bin}/sylphx --version"))
  end
end
