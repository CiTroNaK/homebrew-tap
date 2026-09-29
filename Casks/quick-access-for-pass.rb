cask "quick-access-for-pass" do
  version "0.5.12"
  sha256 "704ab017f406ff6e14d4b3e3ae01efa38bffebc602d7966b6ef7f2e75769f56d"

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
