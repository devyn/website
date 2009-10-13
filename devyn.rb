#!/usr/bin/env ruby
# Sinatra application root

require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'redcloth'
require 'json'
require 'net/http'

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
