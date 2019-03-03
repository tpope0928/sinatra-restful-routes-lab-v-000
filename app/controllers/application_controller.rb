class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/' do
    redirect to "/recipes"
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end


end
