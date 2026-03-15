class LuluCli < Formula
  desc "Manage LuLu macOS firewall rules from the command line"
  homepage "https://github.com/woop/lulu-cli"
  url "https://github.com/woop/lulu-cli/releases/download/v0.1.0/lulu-cli-v0.1.0-macos-universal.tar.gz"
  sha256 "26f1201cf4a7c2e2be76990dcdbb8c5645f8448c151fac2b5ef4b2aecb9cd0ec"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lulu-cli"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/lulu-cli help")
  end
end
