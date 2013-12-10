require "bundler"
require "./lib/gameclass"
require "./lib/player"
Bundler.require

module Game
  class RPS_App < Sinatra::Application
    
    game = GameEngine.new

    get "/throw" do
      erb :throw
    end

    get "/throw/:move" do
      @player_move = game.player.move = params[:move].to_s
      @computer_move = game.computer.rand_move
      @message = game.win_or_lose

      erb :move
    end

  end
end
