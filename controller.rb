
require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/game')

get "/" do
  erb(:home)
end

get "/about_us" do
  erb(:about_us)
end

get '/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
 @result = game.check_winner(@player1, @player2)
 erb( :result )
end
