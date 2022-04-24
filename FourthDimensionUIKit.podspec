#
#  Be sure to run `pod spec lint FourthDimensionUIKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "FourthDimensionUIKit"
  spec.version      = "0.0.1"
  spec.summary      = "FourthDimensionUIKit contains Various mature view components."
  spec.description  = "FourthDimensionUIKit contains Various mature view components. You can pod one of them directly"
  spec.homepage     = "https://github.com/coolnaut/FourthDimensionUIKit"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  spec.license      = { :type => "Apache License 2.0", :file => "LICENSE" }
  spec.author    = "Coolnaut"
  # spec.authors            = { "" => "" }
  # spec.social_media_url   = "https://twitter.com/"

  spec.platform     = :ios, "10.0"
  # spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/coolnaut/FourthDimensionUIKit.git", :tag => "#{spec.version}" }
  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
  spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"
  spec.subspec 'FDSBasic' do |s|
    s.source_files = 'FourthDimensionUIKit/FDSBasic/*'
    s.public_header_files = 'FourthDimensionUIKit/FDSBasic/*.h'
  end
end
