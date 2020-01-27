
Pod::Spec.new do |s|
  s.name         = "SimplePick"
  s.version      = "0.1.0"
  s.summary      = "A pick me!."
  spec.description  = <<-DESC
                      The  class is pick data view,so simple,so nice;
                   DESC
  s.homepage     = "https://github.com/Sunshine7777777/SimpleSelectDate"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { "suntailang" => "2292737166@qq.com" }
  s.source       = { :git => "https://github.com/Sunshine7777777/SimpleSelectDate.git", :tag => "#{s.version}" }
  s.source_files  =  "PickDateView/**/*.{h,m}"
end
