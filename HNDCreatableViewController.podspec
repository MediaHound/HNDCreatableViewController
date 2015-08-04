Pod::Spec.new do |s|
  s.name             = "HNDCreatableViewController"
  s.version          = "0.1.0"
  s.summary          = "Creatable view controllers"
  s.homepage         = "https://github.com/MediaHound/HNDCreatableViewController"
  s.license          = 'Apache'
  s.author           = { "Dustin Bachrach" => "dustin@mediahound.com" }
  s.source           = { :git => "https://github.com/MediaHound/HNDCreatableViewController.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Classes/**/*.{h,m}'
end
