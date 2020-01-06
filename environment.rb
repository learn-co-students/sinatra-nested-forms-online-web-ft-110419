ENV['SINATRA_ENV'] ||= "development"
require 'pry'
require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'
