
Pod::Spec.new do |spec|
  spec.name         = "SimplePick"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of SimplePick."
  spec.description  = <<-DESC
                      The  class is pick data view,so simple,so nice;
                   DESC
  spec.homepage     = "https://github.com/Sunshine7777777/SimpleSelectDate"
  spec.license      = "MIT"
  spec.author             = { "suntailang" => "2292737166@qq.com" }
  spec.source       = { :git => "https://github.com/Sunshine7777777/SimpleSelectDate.git", :tag => "#{spec.version}" }
  spec.source_files  =  "PickDateView/**/*.{h,m}"
end
