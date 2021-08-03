require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-aes-gcm-crypto"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.source       = { :git => "https://github.com/craftzdog/react-native-aes-gcm-crypto.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.swift_version = '5.0'
  s.source_files = "ios/**/*.{h,m,mm,swift}"
  s.dependency "React-Core"
end
