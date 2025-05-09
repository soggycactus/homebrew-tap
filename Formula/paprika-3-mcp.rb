# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Paprika3Mcp < Formula
  desc "MCP Server for creating/editing recipes in Paprika 3 with natural language"
  homepage "https://github.com/soggycactus/paprika-3-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/soggycactus/paprika-3-mcp/releases/download/v0.1.0/paprika-3-mcp_0.1.0_darwin_amd64.zip"
      sha256 "68ee06968febd0fa4c11e698f1df59509866ac62ff79b18d5b6fde3c5caff4d9"

      def install
        bin.install "paprika-3-mcp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/soggycactus/paprika-3-mcp/releases/download/v0.1.0/paprika-3-mcp_0.1.0_darwin_arm64.zip"
      sha256 "7cdac95a03e039cc33267c0a6fe82c04e1ab205d341ce790dfd1c4c69539880b"

      def install
        bin.install "paprika-3-mcp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/soggycactus/paprika-3-mcp/releases/download/v0.1.0/paprika-3-mcp_0.1.0_linux_amd64.zip"
        sha256 "311d4feab1e28f1aa7f927d17901b8ad9238821ae47200c91c5496c3c394b489"

        def install
          bin.install "paprika-3-mcp"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/soggycactus/paprika-3-mcp/releases/download/v0.1.0/paprika-3-mcp_0.1.0_linux_arm.zip"
        sha256 "88793cdfdf29a2c49d429a013dc78489c3cbeecec5db812d0a1ce58fc0fe0668"

        def install
          bin.install "paprika-3-mcp"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/soggycactus/paprika-3-mcp/releases/download/v0.1.0/paprika-3-mcp_0.1.0_linux_arm64.zip"
        sha256 "36fe79b7012fe91c2722f17509e2c0436f40c1384c6fabd242d8f24bc0709169"

        def install
          bin.install "paprika-3-mcp"
        end
      end
    end
  end

  test do
    system "#{bin}/paprika-3-mcp", "--version"
  end
end
