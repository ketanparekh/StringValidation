Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "StringValidation"
s.summary = "StringValidation is useful String Extenstion."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Ketan Parekh" => "ketanparekh.ce@gmail.com" }


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/ketanparekh/StringValidation"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/ketanparekh/StringValidation.git", :tag => "#{s.version}"}

# 7
s.framework = "UIKit"

# 8
s.source_files = "StringValidation/**/*.{swift}"

# 9
#s.resources = "StringValidation/**/*.{png,jpeg,jpg,storyboard,xib}"
end
