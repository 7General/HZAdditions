Pod::Spec.new do |s|
    s.name         = 'HZAdditions'
    s.version      = '1.0.1'
    s.summary      = 'An easy way to use HZ-show-alertview'
    s.homepage     = 'https://github.com/7General/HZAdditions'
    s.license      = 'MIT'
    s.authors      = {'HZ' => 'wanghuizhou21@163.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/7General/HZAdditions', :tag => s.version .git}
    s.source_files = 'Additions/**/*.{h,m}'
    s.requires_arc = true
end
