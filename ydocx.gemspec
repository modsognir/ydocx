# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ydocx/version'

spec = Gem::Specification.new do |s|
   s.name        = "ydocx"
   s.version     =  YDocx::Version.to_s
   s.summary     = "Parsing docx files with Ruby and output them as HTML and XML"
   s.description = ""
   s.author      = "'Yasuhiro Asak, Zeno R.R. Davatz"
   s.email       = "yasaka@ywesee.com, zdavatz@ywesee.com"
   s.platform    = Gem::Platform::RUBY
   s.license     = "GPLv3"
   s.files       = Dir.glob("{bin,lib,spec}/**/*") + Dir.glob("*.txt")
   s.executables << "docx2xml"
   s.executables << "docx2html"

   s.add_dependency 'rubyzip', '> 1.0.0'
   s.add_dependency 'nokogiri', '>= 1.6.0'
   s.add_dependency 'htmlentities'
   s.add_dependency 'rmagick'

   s.homepage	 = "https://github.com/zdavatz/ydocx/"
end

