require "rubygems"
require "prawn"
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| load file }

TableFont.new.to_pdf
TableWidth.new.to_pdf