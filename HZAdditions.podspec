Pod::Spec.new do |s|
    s.name         = 'HZAdditions'
    s.version      = '1.0.3'
    s.summary      = 'An easy way to use HZ-show-alertview'
    s.homepage     = 'https://github.com/7General/HZAdditions'
    s.license      = 'MIT'
    s.author       = { "王会洲" => "wanghuizhou21@163.com" }
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/7General/HZAdditions.git', :tag => s.version}
    s.source_files  = "Addition"
    s.requires_arc = true
end
