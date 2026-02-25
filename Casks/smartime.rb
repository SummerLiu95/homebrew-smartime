cask "smartime" do
  version "1.0.1"
  sha256 "28d4d73676e90d0da17a35e88fccd884e6d5167d9c61176b7072e91272d91759"

  url "https://github.com/SummerLiu95/SmartIME/releases/download/v#{version}/SmartIME_#{version}_aarch64.dmg"
  name "SmartIME"
  desc "AI-powered input method switcher based on active app"
  homepage "https://github.com/SummerLiu95/SmartIME"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "SmartIME.app"

  zap trash: [
    "~/Library/Application Support/SmartIME",
    "~/Library/Caches/com.smartime.app",
    "~/Library/Preferences/com.smartime.app.plist",
  ]
end
