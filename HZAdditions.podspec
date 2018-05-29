#
# Be sure to run `pod lib lint HZAdditions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HZAdditions'
  s.version          = '1.2.1'
  s.summary          = 'A short description of HZAdditions.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wanghuizhou21@163.com/HZAdditions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanghuizhou21@163.com' => 'wanghuizhou@guazi.com' }
  s.source           = { :git => 'https://github.com/7General/HZAdditions.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.public_header_files = 'HZAdditions/Classes/Additions.h'
  s.source_files = 'HZAdditions/Classes/Additions.h'
  
  ## 模块文件
  s.subspec "NSStringHelper" do |ns|
      ns.source_files = 'HZAdditions/Classes/NSStringHelper/*.{h,m}'
  end
  
  s.subspec "UIViewHelper" do |uh|
      uh.source_files = 'HZAdditions/Classes/UIViewHelper/*.{h,m}'
  end
  
  s.subspec "WaterMark" do |wm|
      wm.source_files = 'HZAdditions/Classes/WaterMark/*.{h,m}'
  end
  
  
end
