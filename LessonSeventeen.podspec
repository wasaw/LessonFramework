#
#  Be sure to run `pod spec lint LessonSeventeen.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "LessonSeventeen"
  spec.version      = "0.0.6"
  spec.summary      = "Merenkov Homework"

  spec.description  = <<-DESC
This is homework
                   DESC

  spec.homepage     = "https://github.com/wasaw/LessonFramework.git"

  spec.license      = { :type => "MIT" }


  spec.author             = { "wasaw" => "merenkovalexander@gmail.com" }
  spec.source       = { :git => "https://github.com/wasaw/LessonFramework.git", :tag => "#{spec.version}" }

  spec.source_files  = "LessonSeventeen/**/*.{swift,h,m}"
  spec.public_header_files = "LessonSeventeen/**/*.{h}"
  spec.exclude_files = "LessonSPM/Exclude"

  spec.dependency 'OtusHomework'
end
