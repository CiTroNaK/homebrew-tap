cask "quick-access-for-pass" do
  version "0.5.4"
  sha256 "f315e89b07f4fc22635ec6c1e211aad3e761ee5e64352ed9022048d34a5f14c3"

  url "https://github.com/CiTroNaK/Quick-Access-for-Pass/releases/download/v#{version}/Quick.Access.for.Pass-#{version}.zip"
  name "Quick Access for Pass"
  desc "Quick access to Proton Pass secrets with SSH agent proxy"
  homepage "https://github.com/CiTroNaK/Quick-Access-for-Pass"

  depends_on macos: :sequoia

  app "Quick Access for Pass.app"

  zap trash: [
    "~/Library/Application Support/QuickAccessForPass",
    "~/Library/Preferences/codes.petr.quick-access-for-pass.plist",
    "~/.ssh/quick-access-agent.sock",
    "~/.local/share/quick-access",
  ]
end
