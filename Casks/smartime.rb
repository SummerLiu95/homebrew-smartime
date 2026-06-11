cask "smartime" do
  version "1.1.0"
  sha256 "757f536b1a5cd51dec972036ad39620a4cbc5a49ee1414e13d163ad4d9e8db3f"

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
