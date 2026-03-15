class LuluCli < Formula
  desc "Manage LuLu macOS firewall rules from the command line"
  homepage "https://github.com/woop/lulu-cli"
  url "https://github.com/woop/lulu-cli/releases/download/v0.2.0/lulu-cli-v0.2.0-macos-universal.tar.gz"
  sha256 "2366c0c2591fb73ff9b4bcc7d7ea6bc8f54ff7398c17665dc5b20b6132e0c834"
  version "0.2.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "lulu-cli"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/lulu-cli help")
  end
end
