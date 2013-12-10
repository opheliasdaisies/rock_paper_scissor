require "bundler"
Bundler.require

module Game
  class RPS_App < Sinatra::Application
    
    get "/throw" do
      erb :throw
    end

    get "/throw/:move" do
      @move = params[:type]
    end

  end
end
