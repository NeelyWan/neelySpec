
Pod::Spec.new do |s|

  s.name         = "neelySpec"
  s.version      = "0.0.4"
  s.summary      = "一个数字动画功能"
  s.homepage     = "https://github.com/wannili/neelySpec"
  s.license      = "MIT"
  s.author       = { "wannili" => "wannili" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/wannili/neelySpec.git", :tag => "0.0.4" }
  s.source_files = "Test/BezierAnimation/*.{h,m}"
  s.framework    = "UIKit"
  s.requires_arc = true

end
