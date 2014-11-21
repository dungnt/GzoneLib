Pod::Spec.new do |s|
  s.name             = "GzoneLib"
    s.version          = "0.1.3"
    s.summary          = "GzoneLib Gzone Collection liblary"
    s.homepage         = "https://github.com/dungnt/GzoneLib.git"
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
    s.subspec 'GzFlurry' do |a3|
        a3.source_files = 'Pod/Classes/GzFlurry/*.{h,m}'
        a3.dependency 'FlurrySDK', '~> 5.4.0'
    end
    s.subspec 'GzNetworking' do |a4|
        a4.source_files = 'Pod/Classes/GzNetworking/*.{h,m}'
        a4.dependency 'AFNetworking', '~> 2.5.0'
    end
end
