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

    get "/throw/rock" do
      game.player.move = "rock"
      game.computer.rand_move
      @message = game.win_or_lose

      erb :move
    end

  end
end
