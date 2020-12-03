require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get "/ice_creams" do
    @ice_creams = IceCream.all
    erb :ice_creams
  end

  get "/ice_creams/new" do
    erb :new
  end

  post '/ice_creams' do
    ice = IceCream.new(params)
    ice.save 
    redirect "/ice_creams"
  end

end
