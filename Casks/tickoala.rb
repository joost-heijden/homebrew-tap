cask "tickoala" do
  version "1.8.0"
  sha256 "780edc11a34a9c7ad97c819d3541c5f0e951036a382ccba2aac949d03647be90"

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
