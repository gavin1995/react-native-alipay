require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNAlipay"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "10.0" }

  s.source       = { :git => "https://github.com/gavin1995/react-native-alipay.git", :tag => "v#{s.version}" }
  s.libraries = "c++","z","c++abi","icucore"
  s.source_files = "**/*.{h,c,m,swift}"
  s.requires_arc = true
  s.frameworks = "UIKit",
  s.frameworks = "Foundation",
  s.frameworks = "CFNetwork",
  s.frameworks = "SystemConfiguration",
  s.frameworks = "QuartzCore",
  s.frameworks = "CoreGraphics",
  s.frameworks = "CoreMotion",
  s.frameworks = "CoreTelephony",
  s.frameworks = "CoreText",
  s.frameworks = "WebKit"

  s.resource = 'ios/AlipaySDK.bundle'
  s.vendored_frameworks = 'ios/AlipaySDK.framework'

  s.dependency 'React-Core'
end
