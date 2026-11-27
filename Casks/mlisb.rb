cask "mlisb" do
  version "0.1.16"
  sha256 "8e6193ad5e14b3d5cd6002055d2ab370e399230dc36b7199d7f19794a7f594e0"

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
