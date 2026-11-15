cask "popfix" do
  version "0.3.1"
  sha256 "9a14bb5b40e6bc1202f5caecb1c352479ee1f67f5807ef0e1fd15de222a2ee37"

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
