cask "smartime" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/SummerLiu95/SmartIME/releases/download/v#{version}/SmartIME_#{version}_universal.dmg"
  name "SmartIME"
  desc "AI-powered input method switcher based on active app"
  homepage "https://github.com/SummerLiu95/SmartIME"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "SmartIME.app"

  zap trash: [
    "~/Library/Application Support/SmartIME",
    "~/Library/Caches/com.smartime.app",
    "~/Library/Preferences/com.smartime.app.plist",
  ]
end
