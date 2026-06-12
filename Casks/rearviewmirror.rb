cask "rearviewmirror" do
  version "1.0.2"
  sha256 "72c3b099d42a6a00df0ec47b9f8fb55f22002e758ee20c05352eeb18a0fab481"

  url "https://github.com/connectjeff/rearview/releases/download/v#{version}/RearViewMirror-v#{version}.zip"
  name "RearViewMirror"
  desc "Floating camera overlay"
  homepage "https://github.com/connectjeff/rearview"

  auto_updates false
  depends_on macos: :ventura

  app "RearViewMirror.app"

  zap trash: [
    "~/Library/Caches/com.jeffalderson.RearViewMirror",
    "~/Library/Preferences/com.jeffalderson.RearViewMirror.plist",
    "~/Movies/RearViewMirror",
    "~/Pictures/RearViewMirror",
  ]
end
