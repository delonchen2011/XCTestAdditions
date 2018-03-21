Pod::Spec.new do |s|
  s.name     = 'XCTestAdditions'
  s.version  = '1.0'
  s.authors   = { 'dmapler' => 'dmapler@126.com' }
  s.homepage = 'https://github.com/'
  s.summary  = 'UT tests cases that supports asynchronous tests'
  s.license  = 'MIT'
  s.source       = { :git => '.https://github.com/delonchen2011/XCTestAdditions.git' }
  s.source_files = '*.{m,h}'
  s.platform = :ios
  s.ios.deployment_target = '6.0'
  s.requires_arc = true
  s.ios.frameworks = 'XCTest' 
 end
