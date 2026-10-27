Pod::Spec.new do |s|
  s.name             = 'APIVerveCodeDetector'
  s.version          = '1.2.3'
  s.summary          = 'Code Detector identifies the programming language of any submitted code snippet.'
  s.description      = <<-'DESC'
Code Detector identifies the programming language of any submitted code snippet. It returns the canonical language name, readable title, and standard file extension for the detected code.

This iOS/macOS SDK provides a convenient way to access the Code Detector from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/codedetector?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/codedetector-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCodeDetector/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
