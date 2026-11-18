cask "mlisb" do
  version "0.1.4"
  sha256 "1c88e691ac0fb48fa591d9f800aada71e71ed077f186f1ccd44f04cd2aefd706"

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
