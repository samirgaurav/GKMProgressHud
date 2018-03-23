#
# Be sure to run `pod lib lint GKMProgressHud.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GKMProgressHud'
  s.version          = '1.0.1'
  s.summary          = 'GKMProgressHud is a customizable progress bar for iOS apps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: GKMProgressHud is a customizable progress bar with four small circle animating with there color and size. You can provide image and title with it as well.
                       DESC

  s.homepage         = 'https://github.com/samirgaurav@gmail.com/GKMProgressHud'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'samirgaurav@gmail.com' => 'gaurav.maurya@decimal.co.in' }
  s.source           = { :git => 'https://github.com/samirgaurav@gmail.com/GKMProgressHud.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  s.source_files = 'GKMProgressHud/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GKMProgressHud' => ['GKMProgressHud/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
