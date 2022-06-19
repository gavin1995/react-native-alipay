require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNAlipay"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                      Alipay SDK for React Native
                   DESC
  s.homepage     = package['repository']['url']
  # brief license entry:
  s.license      = package["license"]
  s.author       = { package["author"]["name"] => package["author"]["email"] }
  # optional - use expanded license entry instead:
  # s.license    = { :type => "MIT", :file => "LICENSE" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/gavin1995/react-native-alipay.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.libraries = "c++","z","c++abi","icucore"
  # s.source_files = "**/*.{h,m}"
#   s.requires_arc = true

  s.frameworks = "UIKit","Foundation","CFNetwork","SystemConfiguration","QuartzCore","CoreGraphics","CoreMotion","CoreTelephony","CoreText","WebKit"
  s.ios.vendored_frameworks = 'ios/AlipaySDK.framework'
  s.vendored_frameworks = 'AlipaySDK.framework'
  s.resources = 'ios/AlipaySDK.bundle'
  s.dependency "React-Core"

  # s.source_files  = "AlipaySDKiOS/AlipaySDK.framework/**/*"
  # ...
  # s.dependency "..."
end

