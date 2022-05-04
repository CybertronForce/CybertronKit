#
# Be sure to run `pod lib lint CybertronKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CybertronKit'
  s.version          = '1.0.0'
  s.summary          = 'A short description of CybertronKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CybertronForce/CybertronKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wayne' => 'waynesun1990@gmail.com' }
  s.source           = { :git => 'https://github.com/CybertronForce/CybertronKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.default_subspec = 'All'
  
  s.subspec 'All' do |all|
    all.dependency 'CybertronKit/Banner'
  end

  s.subspec 'Core' do |core|
    core.dependency 'SnapKit'
  end

  s.subspec 'Banner' do |banner|
    banner.source_files = 'CybertronKit/Classes/Banner/**/*'
    banner.dependency 'CybertronKit/Core'
  end
  
  # s.resource_bundles = {
  #   'CybertronKit' => ['CybertronKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
