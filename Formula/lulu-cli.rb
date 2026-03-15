class LuluCli < Formula
  desc "Manage LuLu macOS firewall rules from the command line"
  homepage "https://github.com/woop/lulu-cli"
  url "https://github.com/woop/lulu-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"

  depends_on :macos
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/lulu-cli"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/lulu-cli help")
  end
end
