cask "quick-access-for-pass" do
  version "0.6.0"
  sha256 "36fcb48f3003245d27631e17640d728da3d87d1646a9e40187b3c14fe587a2d1"

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
