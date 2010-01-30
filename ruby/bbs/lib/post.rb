#!/usr/bin/ruby -Ku

class Post < ActiveRecord::Base
  validates_presence_of(:name, :content)
  validates_length_of(:name, :maximum => 40)
  validates_length_of(:content, :maximum => 200)
end
