cask "tickoala" do
  version "1.9.0"
  sha256 "882173053cb14ee4cada4035e1a837e8e161fc4895766b358139f17f911ae671"

  url "https://github.com/joost-heijden/Tickoala/releases/download/v#{version}/Tickoala-#{version}.zip"
  name "Tickoala"
  desc "Automatic work-hours tracking based on the Wi-Fi network you are on"
  homepage "https://github.com/joost-heijden/Tickoala"

  depends_on macos: :ventura

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Tickoala.app"

  zap trash: [
    "~/Library/Application Support/Tickoala",
    "~/Library/Preferences/nl.tickoala.app.plist",
    "~/Library/Preferences/local.tickoala.app.plist",
  ]
end
