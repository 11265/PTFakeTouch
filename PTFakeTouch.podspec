Pod::Spec.new do |s|
  s.name             = 'PTFakeTouch'
  s.version          = '0.1.0'
  s.summary          = 'Simulate touch events for iOS［User mode］'

  s.description      = <<-DESC
  Simulate touch events for iOS［User mode］
  Just build it and add this framework to your project. Then you can use it.
  Addtions are from kif.
  https://github.com/Ret70/PTFakeTouch
  DESC

  s.homepage         = 'https://github.com/tuxi/PTFakeTouch'

  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { 'isaced' => 'seyooe@gmail.com' }
  s.source           = { git: 'https://github.com/tuxi/PTFakeTouch.git', tag: s.version.to_s }

  s.ios.deployment_target = '9.0'
  
  s.requires_arc     = true
  s.default_subspec  = 'App'


  # 依赖的frameworks
  #s.frameworks       = ["CoreGraphics", "Foundation", 'IOKit', 'QuartzCore', 'WebKit']
  s.vendored_frameworks = 'Libs/IOKit.framework'
  #s.vendored_libraries = 'PTFakeTouch/**/*.a'
  #s.libraries = ['c++', 'z', 'sqlite3']
#  s.exclude_files = 'PTFakeTouch/XCTestCase-KIFAdditions.{h,m}'
  # Fixed compile error: Implicit declaration of function 'DLog' is invalid in C99
  
  # 自定义前缀文件
  s.prefix_header_file = false
  s.prefix_header_file = 'PTFakeTouch/PTFakeTouch.h'

  s.subspec 'App' do |app|
     app.source_files = "PTFakeTouch/Addition/UITouch-KIFAdditions.{h,m}", "PTFakeTouch/Addition/IOHIDEvent+KIF.{h,m}", "PTFakeTouch/Addition/UIEvent+KIFAdditions.{h,m}", "PTFakeTouch/Addition/UIView-KIFAdditions.{h,m}", "PTFakeTouch/PTFakeMetaTouch.{h,m}", "PTFakeTouch/Addition/UIWindow-KIFAdditions.{h,m}", "PTFakeTouch/Addition/UIApplication-KIFAdditions.{h,m}", "PTFakeTouch/LoadableCategory.h", "PTFakeTouch/LoadableCategory.h", "PTFakeTouch/FixCategoryBug.h", "PTFakeTouch/PTFakeTouch.h",
     #app.private_header_files = 'PTFakeTouch/**/*.h'
     app.public_header_files = 'PTFakeTouch/PTFakeMetaTouch.h', 'PTFakeTouch/PTFakeTouch.h'
  end
  
end
