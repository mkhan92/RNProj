#
#  Be sure to run `pod spec lint RNLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
version = '0.61.5'
Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "RNLibrary"
  spec.version      = "0.0.1"
  spec.summary      = "he Library is a React Native Library"

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  spec.description  = <<-DESC
  The Library is a React Native Library. This is a research work. A Proof of Concept to test how to make pods.
                   DESC

  spec.homepage     = "https://github.com/mkhan92/RNProj"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  spec.author             = { "Mohamad Khan" => "mkhan92@safeway.com" }
  # Or just: spec.author    = "Mohamad Khan"
  # spec.authors            = { "Mohamad Khan" => "mkhan92@safeway.com" }
  # spec.social_media_url   = "https://twitter.com/Mohamad Khan"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  spec.platform     = :ios, "10.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  # spec.source       = { :git => "http://github.com/mohamadkhan19/RNLibrary.git", :tag => "#{spec.version}" }
  spec.source       = { :git => "https://raw.githubusercontent.com/mkhan92/RNProj/master" }
  # :git => "https://github.com/facebook/react-native.git", :tag => "v#{version}",

  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "ios/RNLibrary/RNLibrary/*.{h,m,swift}"
  # spec.source_files  = "Pod/Classes/**/*.{h,m,swift}"
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
  spec.resource = "ios/RNLibrary/Assets/main.jsbundle"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "React"
  # spec.frameworks = "cxxreact", "DoubleConversion", "FBReactNativeSpec", "folly", "glog", "jsi", "jsinspector", "jsireact", "RCTImage", "RCTNetwork", "RCTTypeSafety", "React", "ReactCommon", "yoga"

  # spec.library   = "React"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  # React's dependencies
  # spec.dependency 'Yoga', "#{version}.React"
  spec.dependency 'Yoga'

  # React is split into a set of subspecs, these are the essentials
  spec.dependency 'React' , version
  spec.dependency 'React-Core', version
  # spec.dependency 'React-CxxBridge', version
  # spec.dependency 'React-RCTAnimation', version
  # spec.dependency 'React-RCTImage', version
  # spec.dependency 'React-RCTLinkingIOS', version
  # spec.dependency 'React-RCTNetwork', version
  # spec.dependency 'React-RCTText', version

  # podspecs = [
  #   '../../node_modules/react-native/third-party-podspecs/DoubleConversion.podspec',
  #   '../../node_modules/react-native/third-party-podspecs/Folly.podspec',
  #   '../../node_modules/react-native/third-party-podspecs/glog.podspec'
  # ]
  # podspecs.each do |podspec_path|
  #   s = Pod::Specification.from_file podspec_path
  #   spec.dependency s.name, "#{s.version}"
  # end
end