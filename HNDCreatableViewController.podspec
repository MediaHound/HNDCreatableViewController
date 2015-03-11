Pod::Spec.new do |s|
  s.name             = "HNDCreatableViewController"
  s.version          = "0.0.1"
  s.summary          = "Creatable view controllers"
  s.homepage         = ""
  s.license          = 'MIT'
  s.author           = { "Dustin Bachrach" => "ahdustin@gmail.com" }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Classes/**/*.{h,m}'

  s.dependency 'AtSugar'
end
