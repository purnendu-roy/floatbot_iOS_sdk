
Pod::Spec.new do |s|

  s.name         = "floatbot_iOS_sdk"
  s.version      = "0.0.2"
  s.summary      = "Integrates floatbot with the iOS app."
  s.description  = <<-DESC
Integrates floatbot with the iOS app.
                   DESC
  s.homepage     = "http://github.com/FloatbotAI/floatbot_iOS_sdk"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Jhanvi" => "jhanvi.it@gmail.com" }
  s.platform     = :ios, "9.0"
  s.swift_version = '4.2'
  s.source       = { :git => "http://github.com/FloatbotAI/floatbot_iOS_sdk.git", :tag => "#{s.version}" }
  s.dependency "Alamofire"
  s.ios.vendored_frameworks = 'floatbot_iOS_sdk.framework'


end
