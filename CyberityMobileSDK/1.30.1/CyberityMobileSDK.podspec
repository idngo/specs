Pod::Spec.new do |s|

    s.name     = 'CyberityMobileSDK'
    s.version  = '1.30.1'
    s.summary  = 'IDnGo Mobile SDK'
    s.authors  = 'IDnGo'
    s.homepage = 'https://idngo.ru/'
    s.platform = :ios
    s.source   = { :http => "https://raw.githubusercontent.com/idngo/releases/main/mobilesdk-ios/#{s.version}/CyberityMobileSDK-#{s.version}.zip" }

    s.ios.deployment_target = '12.0'
    s.default_subspec = 'Default'
    
    s.subspec 'Default' do |s|        
        s.dependency 'CyberityMobileSDK/Core'
    end
    
    s.subspec 'Core' do |s|
        s.ios.vendored_frameworks = 'CyberityMobileSDK.xcframework'
    end
    
end
