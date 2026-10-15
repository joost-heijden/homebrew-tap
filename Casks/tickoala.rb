cask "tickoala" do
  version "1.10.0"
  sha256 "786ff4590e65d128d7d8a441827314ce4bb39b979f9c0f7cbcc7c195afd5d92c"

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
