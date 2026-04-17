cask "quick-access-for-pass" do
  version "0.0.0"
  sha256 "PLACEHOLDER_UNTIL_FIRST_RELEASE"

  url "https://github.com/CiTroNaK/Quick-Access-for-Pass/releases/download/v#{version}/Quick.Access.for.Pass-#{version}.zip"
  name "Quick Access for Pass"
  desc "Quick access to Proton Pass secrets with SSH agent proxy"
  homepage "https://github.com/CiTroNaK/Quick-Access-for-Pass"

  depends_on macos: ">= :sequoia"

  app "Quick Access for Pass.app"

  zap trash: [
    "~/Library/Application Support/QuickAccessForPass",
    "~/Library/Preferences/codes.petr.quick-access-for-pass.plist",
    "~/.ssh/quick-access-agent.sock",
    "~/.local/share/quick-access",
  ]
end
