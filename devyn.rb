#!/usr/bin/env ruby
# Sinatra application root

require 'rubygems'
require 'sinatra'
require 'haml'
require 'redcloth'
require 'json'
require 'net/http'
require 'rss/1.0'
require 'rss/2.0'

class DevynWeb < Sinatra::Application
  # configuration goes here...
  set :environment, :production
  set :public,      "static"
  set :views,       "template"
  # load the files
  Dir["{model,route}/*.rb"].each do |fn|
    self.class_eval File.read(fn)
  end
end
