cask "quick-access-for-pass" do
  version "0.5.6"
  sha256 "11ca30d328365c24abb0725588492eec5fdd227478f327b8c4818aa9e90bb798"

  url "https://github.com/CiTroNaK/Quick-Access-for-Pass/releases/download/v#{version}/Quick.Access.for.Pass-#{version}.zip"
  name "Quick Access for Pass"
  desc "Quick access to Proton Pass secrets with SSH agent proxy"
  homepage "https://github.com/CiTroNaK/Quick-Access-for-Pass"

  depends_on macos: :sequoia

  app "Quick Access for Pass.app"

  uninstall quit: "codes.petr.quick-access-for-pass"

  zap trash: [
    "~/.local/share/quick-access",
    "~/.ssh/quick-access-agent.sock",
    "~/Library/Application Support/QuickAccessForPass",
    "~/Library/Preferences/codes.petr.quick-access-for-pass.plist",
  ]
end
