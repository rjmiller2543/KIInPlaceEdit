Pod::Spec.new do |s|
  s.name         = "KIInPlaceEditKnockdownFork"
  s.version      = "0.1.5"
  s.summary      = "In-place editing for iOS."
  s.description  = "This UILabel category enables users to edit a label text in a place."
  s.homepage     = "https://github.com/rjmiller2543/KIInPlaceEditKnockdownFork"
  s.license      = "MIT"
  s.author       = { "kaiinui" => "lied.der.optik@gmail.com" }
  s.source       = { :git => "https://github.com/rjmiller2543/KIInPlaceEditKnockdownFork.git" }
  s.source_files  = "InPlaceEdit/Classes/**/*.{h,m}"
  s.requires_arc = true
  s.platform = "ios", '7.0'
end
