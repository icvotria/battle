require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    # I promise to never use global variables in tech tests
    $player_1 = Player.new(params[:player_1_name].capitalize)
    $player_2 = Player.new(params[:player_2_name].capitalize)
    # session[:player_1] = params[:player_1_name].capitalize
    # session[:player_2] = params[:player_2_name].capitalize
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    # @player_1_name = session[:player_1]
    # @player_2_name = session[:player_2]
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    # @player_1_name = session[:player_1]
    # @player_2_name = session[:player_2]
    erb :attack
  end

  run! if app_file == $0
end
