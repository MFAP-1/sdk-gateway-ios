#
# Be sure to run `pod lib lint SdkGatewayIos.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SdkGatewayIos'
  s.version          = '0.0.1'
  s.summary          = 'This is a meaningful summary of my pod'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/n.junior/SdkGatewayIos'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'neijrdev' => 'n.junior@paylivre.com' }
  s.source           = { :git => 'https://github.com/paylivre/sdk-gateway-ios', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
  s.default_subspec = 'src'
  s.static_framework = true

  # s.source_files = 'SdkGatewayIos/src/**/*'
  # s.resources = ['SdkGatewayIos/src/**/*.xib']
  
  #  s.resource_bundles = {
  #    'Resources' => ['SdkGatewayIos/src/**/*.xib']
  #  }

   s.subspec 'src' do |default|
    default.source_files = ['SdkGatewayIos/src/**/*.swift', 'SdkGatewayIos/src/**/**/*.swift']
    default.resources = [
      'SdkGatewayIos/src/**/*.{storyboard,xib}',
      'SdkGatewayIos/src/**/**/*.{storyboard,xib}',
      'SdkGatewayIos/src/**/*.{lproj,strings,stringsdict}',
      'SdkGatewayIos/src/**/**/*.{lproj,strings,stringsdict}',
      'SdkGatewayIos/src/**/*.{jpg}'
    ]
    default.resource_bundles = {
      'Resources' => [
        'SdkGatewayIos/src/**/*.{storyboard,xib}',
      ]
    }
  end

  s.test_spec 'SdkGatewayIosTests' do |test_spec|
    test_spec.requires_app_host = false
    test_spec.source_files = 'SdkGatewayIos/Tests/*'
    test_spec.frameworks = 'XCTest'
  end
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
