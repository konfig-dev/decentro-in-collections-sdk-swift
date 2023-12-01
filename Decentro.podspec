Pod::Spec.new do |s|
  s.name = 'Decentro'
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.0'
  s.source = { :git => 'https://github.com/decentro-in/decentro-in-collections-sdk.git', :tag => 'v1.0.0-swift' }
  s.authors = 'decentro.tech'
  s.license = 'MIT'
  s.homepage = 'https://github.com/decentro-in/decentro-in-collections-sdk/tree/master/swift'
  s.summary = 'Decentro Swift SDK'
  s.source_files = 'swift/Decentro/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
