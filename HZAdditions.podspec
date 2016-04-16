Pod::Spec.new do |s|
    s.name         = 'HZAdditions'
    s.version      = '1.0.3'
    s.summary      = 'An easy way to use HZ-show-Additions'
    s.homepage     = 'https://github.com/7General/HZAdditions'
    s.license      = 'MIT'
    s.author       = { "王会洲" => "wanghuizhou21@163.com" }
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/7General/HZAdditions.git', :tag => s.version}
    s.source_files = 'Additions/**/*.{h,m}'
    s.requires_arc = true
end



