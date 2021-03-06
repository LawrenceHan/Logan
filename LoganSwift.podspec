Pod::Spec.new do |s|
  s.name          = "LoganSwift"
  s.version       = "1.1.3"
  s.summary       = "Logan is a lightweight case logging system based on mobile platform."
  s.swift_version = "5.0"
  s.description   = <<-DESC
  LoganSwift is a pure Swift implemented kit on top of Clogan. Logan is a lightweight case logging system based on mobile platform.
                   DESC
  s.homepage      = 'https://github.com/LawrenceHan/Logan'
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { "LawrenceHan" => "yangfei6565@163.com" }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.requires_arc = true

  s.source       = { :git => 'https://github.com/LawrenceHan/Logan.git', :tag => s.version.to_s }
  s.source_files = 'Logan/LoganSwift/LoganSwift/*.{swift,h}', 'Logan/Clogan/*.{h,c}', 'Logan/mbedtls/**/*.{h,c}'
  s.public_header_files = "Logan/LoganSwift/LoganSwift/*.h"
  s.pod_target_xcconfig = {'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/LoganSwift/Logan/Clogan/**', 'HEADER_SEARCH_PATHS' => '$(SRCROOT)/LoganSwift/Logan/mbedtls/include/'}
  s.preserve_paths  = 'Logan/Clogan/module.modulemap'
  s.libraries = 'z'

  # s.subspec 'mbedtls' do |mbedtls|
  #   mbedtls.source_files = "Logan/mbedtls/**/*.{h,c}"
  #   mbedtls.header_dir = 'mbedtls'
  # end
end
