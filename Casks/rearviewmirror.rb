cask "rearviewmirror" do
  version "1.0.3"
  sha256 "86e984b1c7fe42c29358e397ed4cedb56eb50e8e51fc57a88d5a266764c07305"

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
