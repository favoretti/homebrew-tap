cask "mlisb" do
  version "0.1.5"
  sha256 "7e0f6525eb877eb904f5d0c0e108aa3c390359599702488ac7695d35690803f0"

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
