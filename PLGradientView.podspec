Pod::Spec.new do |spec|
  spec.name           = "PLGradientView"
  spec.version        = "1.0.0"
  spec.swift_versions = ["4.0", "4.1", "4.2", "5.0", "5.1", "5.2", "5.3"]
  spec.summary        = "Can easily introduce gradation."
  spec.homepage       = "https://github.com/yutakaA/PLGradientView"
  spec.license        = { :type => 'MIT', :file => 'LICENSE' }
  spec.author             = { "Yutaka Ataka" => "makingtheroad.dr@gmail.com" }
  spec.social_media_url   = "https://twitter.com/yutak_a0810"
  spec.platform       = :ios, "9.0"
  spec.source         = { :git => "https://github.com/yutakaA/PLGradientView.git", :tag => spec.version }
  spec.source_files   = "PLGradientView/**/*.swift"
  spec.exclude_files  = "PLGradientView/Demo"
end
