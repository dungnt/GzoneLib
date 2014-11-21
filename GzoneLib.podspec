#
# Be sure to run `pod lib lint GzoneLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "GzoneLib"
    s.version          = "0.1.0"
    s.summary          = "GzoneLib Gzone Collection liblary"
    s.homepage         = "https://github.com/dungnt/GzoneLib"
    s.license          = 'MIT'
    s.author           = { "dungnt" => "dung.nt@gzone.com.vn" }
    s.source           = { :git => "https://github.com/dungnt/GzoneLib.git", :tag => s.version.to_s }
    s.platform     = :ios, '7.0'
    s.requires_arc = true
    s.source_files = 'Pod/Classes/*.{h,m}'
    s.resource_bundles = {
        'GzoneLib' => ['Pod/Assets/*.png']
    }
    s.subspec 'GzFileAmazonUpload' do |a|
        a.source_files = 'Pod/Classes/GzFileAmazonUpload/*.{h,m}'
        a.dependency 'AFNetworking', '~> 2.4.1'
    end
    s.subspec 'GzCrashLogMessage' do |a1|
        a1.source_files = 'Pod/Classes/GzCrashLogMessage/*.{h,m}'
        a1.dependency 'Parse', '~> 1.5.0'
    end
    s.subspec 'GzInternetConnection' do |a2|
        a2.source_files = 'Pod/Classes/GzInternetConnection/*.{h,m}'
        a2.dependency 'Reachability', '~> 3.1.1'
    end

end
