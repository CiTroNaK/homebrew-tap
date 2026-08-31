cask "quick-access-for-pass" do
  version "0.5.9"
  sha256 "110052c396eb61b1c02cb452fc39d84ea579f5a615509a1a89e7fa23fd1a7578"

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
