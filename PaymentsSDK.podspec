Pod::Spec.new do |s|
  s.name             = "PaymentsSDK"
  s.version          = "0.1.0"
  s.summary          = "Payments SDK for card tokenization and charges."
  s.description      = "PaymentsSDK provides a clean Swift API to integrate card payments."
  s.homepage         = "https://github.com/jonathan02rv/PaymentsSDK"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Jonathan" => "your-email@example.com" }
  s.source           = { :git => "https://github.com/jonathan02rv/PaymentsSDK.git", :tag => s.version.to_s }

  s.ios.deployment_target = "14.0"
  s.swift_version = "5.9"
  s.source_files = "Sources/**/*.{swift}"
end

