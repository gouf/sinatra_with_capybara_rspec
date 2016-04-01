require 'sinatra'

class MyApp < Sinatra::Base
  get '/?index.html' do
    '<a href="#">click</a>'
  end

  get '/test' do
    @say = 'Hello!'
    erb :test
  end
end
