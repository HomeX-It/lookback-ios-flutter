#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'lookback_ios_flutter'
  s.version          = '0.0.1'
  s.summary          = 'Lookback iOS SDK for Flutter'
  s.description      = <<-DESC
Lookback iOS SDK for Flutter
                       DESC
  s.homepage         = 'https://github.com/HomeXLabs/lookback-ios-flutter'
  s.license          = { :file => '../../LICENSE' }
  s.author           = { 'HomeX' => 'jrai@homex.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'Lookback', '3.0.1'

  s.ios.deployment_target = '9.0'
  
  s.static_framework = true
end