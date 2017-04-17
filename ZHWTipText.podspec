Pod::Spec.new do |s|

  s.name         = "ZHWTipText"
  s.version      = "0.0.1"
  s.summary      = "底部带有三角箭头的提示"

  s.description  = <<-DESC
底部带有三角箭头的提示,底部带有三角箭头的提示
                   DESC

  s.homepage     = "https://jesse881025/ZHWTipText"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  s.license      = { :type => "MIT", :file => "LICENSE" }
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "zhanghongwei" => "hongwei.zhang@langlive.com" }
  # Or just: s.author    = "zhanghongwei"
  # s.authors            = { "zhanghongwei" => "hongwei.zhang@langlive.com" }
  # s.social_media_url   = "http://twitter.com/zhanghongwei"


  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  s.source       = { :git => "https://jesse881025/ZHWTipText.git", :tag => s.version}
  s.source_files  = "TipText", "ZHWTipText/TipText/**/*}"
  #s.source_files  = "TipText", "ZHWTipText/TipText/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency "Masonry", "~> 0.6.3"

end
