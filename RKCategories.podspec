#
# Be sure to run `pod lib lint RKCategories.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "RKCategories"
  s.version          = "0.1.1"
  s.summary          = "A short description of RKCategories."
  s.description      = <<-DESC
                       An optional longer description of RKCategories

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/rich86man/RKCategories"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "rich86man" => "richardbkirk@gmail.com" }
  s.source           = { :git => "https://github.com/rich86man/RKCategories.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'RKCategories' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'ObjectiveSugar', '~> 1.1'
  s.dependency 'BlocksKit', '~> 2.2.5'
  s.dependency 'UIImage-Categories', '~> 1.0.0'
end
