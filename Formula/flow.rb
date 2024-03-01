# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Flow < Formula
  desc "Devops CLI to handle basic devops tasks"
  homepage "https://github.com/Edens-Angel/flow-cli"
  version "0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.2/flow-cli_0.2_darwin_arm64.tar.gz"
      sha256 "e0af7da84f29a49102554cbcd88a45e8b648dd051850ea713415849de1ecafbf"

      def install
        bin.install "flow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.2/flow-cli_0.2_darwin_amd64.tar.gz"
      sha256 "a970aa736e34d4acea66399bebfedbc924ea273e13ada19a28e45b3810b9d925"

      def install
        bin.install "flow"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.2/flow-cli_0.2_linux_arm64.tar.gz"
      sha256 "09bdf59a957a58f66881dfb72da6f391b35293bf4398dfb743078fd52fccf12f"

      def install
        bin.install "flow"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Edens-Angel/flow-cli/releases/download/v0.2/flow-cli_0.2_linux_amd64.tar.gz"
      sha256 "269d8a5b3e305cc30d9057859cc6d75ef68a46cd4c89996799cbbcd5e2966602"

      def install
        bin.install "flow"
      end
    end
  end

  test do
    system "flow ip"
  end
end