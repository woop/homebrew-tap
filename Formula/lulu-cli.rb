class LuluCli < Formula
  desc "Manage LuLu macOS firewall rules from the command line"
  homepage "https://github.com/woop/lulu-cli"
  url "https://github.com/woop/lulu-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
