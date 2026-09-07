cask "smartime" do
  version "1.3.0"
  sha256 "d18c8ca69c84ef1492e92b9bcaf3c36849a7a5244b32139ce0871c2f81ef2001"

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
