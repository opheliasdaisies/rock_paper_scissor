require "bundler"
Bundler.require

module Game
  class RPS_App < Sinatra::Application
    
    @game = GameEngine.new

    get "/throw" do
      erb :throw
    end

    get "/throw/:move" do
      @game.player.move = params[:move]
      @game.computer.rand_move
      @message = @game.win_or_lose

      erb :move
    end

  end
end
