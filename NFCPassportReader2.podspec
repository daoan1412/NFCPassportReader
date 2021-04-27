Pod::Spec.new do |spec|

  spec.name         = "NFCPassportReader2"
  spec.version      = "1.1.5"
  spec.summary      = "This package handles reading an NFC Enabled passport using iOS 13 CoreNFC APIS"

  spec.homepage     = "https://github.com/daoan1412/NFCPassportReader"
  spec.license      = "MIT"
  spec.author       = { "Dao An" => "daoan1412@gmail.com" }
  spec.platform = :ios
  spec.ios.deployment_target = "10.0"

  spec.source       = { :git => "https://github.com/daoan1412/NFCPassportReader.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/**/*.{swift}"

  spec.swift_version = "5.0"

  spec.dependency "OpenSSL-Universal", '1.1.180'
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC',
                             'ENABLE_BITCODE' => '"NO' }

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
