require 'sinatra'

class MyApp < Sinatra::Base
  get '/?index.html' do
    '<a href="#">click</a>'
  end
end
