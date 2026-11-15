cask "popfix" do
  version "0.1.0"
  sha256 "844b76b9a3f1b9859188ae1287d686524197c54597a57a6511c85ed892bc10b6"

  url "https://github.com/builtby-win/macos-pop-fix/releases/download/v#{version}/PopFix.zip"
  name "PopFix"
  desc "Menu-bar app that fixes macOS coreaudiod crackling/popping audio"
  homepage "https://github.com/builtby-win/macos-pop-fix"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "PopFix.app"

  zap trash: "~/Library/Logs/PopFix"
end
