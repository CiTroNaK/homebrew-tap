cask "quick-access-for-pass" do
  version "0.4.7"
  sha256 "355f51105d7010085abe142e72f486d8725665f839838f70b9f3656893310345"

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
