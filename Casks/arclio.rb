cask "arclio" do
  version "0.5.1"

  on_arm do
    sha256 "b87dae436aa9bb839c6fd37291ae0695fa7f4bbe6be8e9450d1309d87004a34c"
    url "https://github.com/kemzang/Arclio/releases/download/v#{version}/Arclio-mac-arm64.dmg"
  end
  on_intel do
    sha256 "4595eb711209703abc1f5fa128be5718dda35d96d75642cb7ffa7bdaf0147a59"
    url "https://github.com/kemzang/Arclio/releases/download/v#{version}/Arclio-mac-x64.dmg"
  end

  name "Arclio"
  desc "YouTube downloader"
  homepage "https://github.com/kemzang/Arclio"

  app "Arclio.app"

  zap trash: [
    "~/Library/Application Support/Arclio",
    "~/Library/Preferences/com.arclio.app.plist",
    "~/Library/Logs/Arclio",
  ]
end
