cask "rearviewmirror" do
  version "1.0.4"
  sha256 "394dd78e1de2a8c7718d696ee11245b806f82673664b574783294e03b6437b8e"

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
