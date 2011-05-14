require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra/base'

class MyApp < Sinatra::Base
  set :static, true
  set :public, File.dirname(__FILE__) + '/static'

  get '/' do
    @title = 'Home'
    erb :index,:layout=>:application
  end

  get '/contact' do
    @title = 'Contact'
    erb :contact,:layout=>:application
  end

  get '/portfolio' do
    @title = 'Portfolio'
    erb :portfolio,:layout=>:application
  end

end