Pod::Spec.new do |s|
  s.name = 'Decentro'
  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '1.0.1'
  s.source = { :git => 'https://github.com/konfig-dev/decentro-in-collections-sdk-swift.git', :tag => 'v1.0.1-swift' }
  s.authors = 'decentro.tech'
  s.license = 'MIT'
  s.homepage = 'https://github.com/konfig-dev/decentro-in-collections-sdk-swift/tree/main'
  s.summary = 'Decentro Swift SDK'
  s.source_files = 'Decentro/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
