cask "quick-access-for-pass" do
  version "0.5.7"
  sha256 "6cc41309d6ca57841cb78989364cc31ef2be97f4b5f56d061316a489ce9ac94d"

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
