cask "popfix" do
  version "0.3.2"
  sha256 "d3695663cfd7603155c895790a605d714261a6c9ab3a84d104fa69a25e3ba103"

  url "https://github.com/builtby-win/macos-pop-fix/releases/download/v#{version}/PopFix.zip"
  name "PopFix"
  desc "Menu-bar app that fixes macOS coreaudiod crackling/popping audio"
  homepage "https://github.com/builtby-win/macos-pop-fix"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "PopFix.app"

  zap trash: "~/Library/Logs/PopFix"
end
