Pod::Spec.new do |spec|
  spec.name    		= "H3kit"
  spec.version 		= "4.0.0"
  spec.summary  	= "iOS/Swift wrapper over Uber H3 from https://github.com/uber/h3"

  spec.description  	=<<-DESC
iOS/Swift wrapper over Uber H3 from https://github.com/uber/h3 that can we used with Swift.
DESC

  spec.homepage 	= "https://github.com/YaroslavErmolaev/H3kit"
  spec.license  	= "Apache 2.0 License"
  spec.author 		= { "Mike Chartier" => "ehmjaysee@icloud.com" }
  spec.source   	= { :git => "https://github.com/ehmjaysee/H3kit.git", :tag => spec.version.to_s }
  spec.source_files 	= 'src/h3lib/*.{c,h}*', 'src/swift/*.swift'
  spec.swift_versions	= [ '4.0','4.2','5.0' ]
  spec.static_framework	= true
  spec.public_header_files	= 'src/h3lib/h3api.h'
  spec.ios.deployment_target	= '14.0'
  spec.pod_target_xcconfig	= { 'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO', 'CLANG_WARN_STRICT_PROTOTYPES' => 'NO' }

end
