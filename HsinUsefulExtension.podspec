
Pod::Spec.new do |spec|


  spec.name         = "HsinUsefulExtension"
  spec.version      = "0.1.0"
  spec.summary      = "Some useful extension."
  spec.description  = <<-DESC
My useful extension!
                   DESC
  spec.homepage     = "https://github.com/HsinChungHan/HsinUsefulExtension"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "HsinChungHan" => "hooy123456@gapp.nthu.edu.tw" }
  spec.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/HsinChungHan/HsinUsefulExtension.git", :tag => "#{s.version}" }
  s.source_files  = "HsinUsefulExtension/Utilities/*.{swift}"

end
