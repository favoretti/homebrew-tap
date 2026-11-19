cask "mlisb" do
  version "0.1.8"
  sha256 "8ede6a496cb0e745d2749226d833b36b16c1dd485649fe058fc321046f1bca2d"

  url "https://github.com/favoretti/mlisb/releases/download/v#{version}/mlisb-#{version}.zip"
  name "mlisb"
  desc "Markdown viewer and quick editor with Mermaid and D2 diagrams"
  homepage "https://github.com/favoretti/mlisb"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "mlisb.app"
  binary "#{appdir}/mlisb.app/Contents/Resources/bin/mlisb"

  zap trash: [
    "~/Library/Application Scripts/net.favoretti.mlisb*",
    "~/Library/Containers/net.favoretti.mlisb*",
  ]
end
