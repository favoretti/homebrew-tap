cask "mlisb" do
  version "0.1.2"
  sha256 "8806492325ad065ce2817a1e1aa0bbd80212ade60951d9ffaa3d0daa30abe277"

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
