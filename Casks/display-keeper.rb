cask "display-keeper" do
  version "0.4.0"
  sha256 "01aacbabb2557414a52166c4b5e1e1890b3de83ebe073350c9739a5f0e0f1e90"

  url "https://github.com/favoretti/display-keeper/releases/download/v#{version}/DisplayKeeper-#{version}.zip"
  name "Display Keeper"
  desc "Restores external monitor and window layout after wake"
  homepage "https://github.com/favoretti/display-keeper"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "DisplayKeeper.app"
  binary "#{appdir}/DisplayKeeper.app/Contents/Resources/display-keeper"

  zap trash: [
    "~/Library/Application Support/DisplayKeeper",
    "~/Library/Caches/io.github.favoretti.DisplayKeeper",
    "~/Library/HTTPStorages/io.github.favoretti.DisplayKeeper",
    "~/Library/Preferences/io.github.favoretti.DisplayKeeper.plist",
  ]
end
