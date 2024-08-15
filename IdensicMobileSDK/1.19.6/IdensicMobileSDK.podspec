Pod::Spec.new do |s|

    s.name              = 'IdensicMobileSDK'
    s.version           = '1.19.6'
    s.summary           = 'IDnGo Mobile SDK'
    s.authors           = 'IDnGo'
    s.homepage          = 'https://idngo.ru/'
    s.platform          = :ios
    s.source            = { :http => "https://raw.githubusercontent.com/idngo/releases/archive/mobilesdk-ios/#{s.version}/IdensicMobileSDK-#{s.version}.zip" }

    s.ios.deployment_target = '9.0'
    s.default_subspec = 'Default'
    
    s.subspec 'Default' do |s|
        s.dependency 'IdensicMobileSDK/Core'
    end
    
    s.subspec 'Core' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK.xcframework'
    end
    
    s.subspec 'MRTDReader' do |s|
        s.ios.vendored_frameworks = 'IdensicMobileSDK_MRTDReader.xcframework'
        s.dependency 'IdensicMobileSDK/Core'
        s.dependency 'OpenSSL-Universal'
    end
end
