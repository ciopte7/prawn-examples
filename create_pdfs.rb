require "rubygems"
require "prawn"
require "lib/shared_document"
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

TableFont.new.to_pdf
TableWidth.new.to_pdf
ColorFailure.new.to_pdf