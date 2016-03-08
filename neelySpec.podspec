
Pod::Spec.new do |s|

  s.name         = "neelySpec"
  s.version      = "0.0.5"
  s.summary      = "一个数字动画功能"
  s.homepage     = "https://github.com/NeelyWan/neelySpec"
  s.license      = "MIT"
  s.author       = { "NeelyWan" => "NeelyWan" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/NeelyWan/neelySpec.git", :tag => "0.0.5" }
  s.source_files = "Test/BezierAnimation/*.{h,m}"
  s.framework    = "UIKit"
  s.requires_arc = true

end
