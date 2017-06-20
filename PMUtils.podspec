Pod::Spec.new do |s|
s.name        = "PMUtils"
s.version     = "1.2.3"
s.summary     = "PMUtils contains categories on Foundation and UIKit classes as well as a few custom classes for common use cases."
s.homepage    = "https://github.com/bonobolabs/#{s.name}"
s.license     = 'MIT'
s.author      = { "Adam Darton" => "adam@bonobolabs.com" }
s.source      = { :git => "https://github.com/bonobolabs/#{s.name}.git", :tag => s.version.to_s }
s.platform    = :ios, '7.0'
s.public_header_files = 'Pod/Classes/**/*.h'
s.source_files = 'Pod/Classes/**/*.{h,m}'
s.requires_arc = true


s.subspec 'UIKit+PMUtils' do |ss|
ss.source_files = 'Pod/Classes/UIKit+PMUtils/*.{h,m}'
ss.public_header_files = 'Pod/Classes/UIKit+PMUtils/*.h'
ss.dependency 'PMUtils/Foundation+PMUtils'
ss.dependency 'PMUtils/PMProtocolInterceptor'
end

s.subspec 'Foundation+PMUtils' do |ss|
ss.source_files = 'Pod/Classes/Foundation+PMUtils/*.{h,m}'
ss.public_header_files = 'Pod/Classes/Foundation+PMUtils/*.h'
ss.frameworks = 'CoreData'
end

s.subspec 'PMProtocolInterceptor' do |ss|
ss.source_files = 'Pod/Classes/PMProtocolInterceptor/*.{h,m}'
ss.public_header_files = 'Pod/Classes/PMProtocolInterceptor/*.h'
end

s.subspec 'PMCircularCollectionView' do |ss|
ss.source_files = 'Pod/Classes/PMCircularCollectionView/*.{h,m}'
ss.public_header_files = 'Pod/Classes/PMCircularCollectionView/*.h'
ss.dependency 'PMUtils/UIKit+PMUtils'
ss.dependency 'PMUtils/PMProtocolInterceptor'
end

end
