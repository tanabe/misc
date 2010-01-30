#!/usr/bin/ruby -Ku

require 'rubygems'
require 'active_record'

$TEMPLATE_PATH = "tmpl/template.rhtml"

ActiveRecord::Base.establish_connection (
  :adapter => "mysql",
  :host => "localhost",
  :username => "rubybbsuser",
  :password => "rubybbs1234",
  :database => "rubybbs"
)
