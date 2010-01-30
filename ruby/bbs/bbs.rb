#!/usr/bin/ruby -Ku

require 'rubygems'
require 'erb'
require 'cgi'
require 'config'
require 'lib/post'

class BBS
  #constructor
  def initialize
    @cgi = CGI.new
    @url = "http://#{ENV['SERVER_NAME']}#{ENV['REQUEST_URI']}"

    if self.save_new_post
      puts @cgi.header({"status" => "302 Found", "Location" => @url})
    else
      begin
        @posts = Post.find(:all, {:order => "date desc"})
        self.render
      rescue
        self.render_error
      end
    end
  end

  #save new post
  def save_new_post
    params = @cgi.params
    if @cgi.request_method == "POST"
      return  Post.new(:name => params["name"][0].untaint, :content => params["content"][0].untaint, :date => Time.new).save
    end
    return false
  end

  #render view html
  def render
    puts @cgi.header({"content-type" => "text/html", "charset" => "utf-8"})
    @erb = ERB.new(File.read($TEMPLATE_PATH).untaint, 1)
    puts @erb.result(binding) 
  end

  #render error html
  def render_error
    puts @cgi.header({"content-type" => "text/html", "charset" => "utf-8"})
    puts "error"
    exit
  end
end

#execute
BBS.new
