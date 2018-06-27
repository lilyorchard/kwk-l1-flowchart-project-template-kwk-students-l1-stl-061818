require "./config/environment"
require "./app/models/model"
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

get '/' do
  return erb :index
end

post '/' do
  @the_fortune=get_fortune #method get_fortune is connected to thhe instance variable @the_fortune
  @the_user=params[:user] #creating a new instance variable the_user params is a hash that store the user input ex: user=> value
  return erb :results
end
end

end
