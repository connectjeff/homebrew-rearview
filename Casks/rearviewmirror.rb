cask "rearviewmirror" do
  version "1.0.2"
  sha256 "8ba8ec9dfb9269eb9c710509b98b3b9323a0c4ca968358393cf286aeb9728d7e"

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
