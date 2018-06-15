require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = "1.0.0"
  s.summary      = package['description']
  s.description  = <<-DESC
                      RNTooltips for React Native
                   DESC
  s.homepage     = ""
  s.license      = package['license']
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.requires_arc        = true
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNTooltips.git", :tag => "master" }
  s.preserve_paths      = "*.framework"
  s.source_files  = "RNTooltips/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
  #s.dependency "others"

end
