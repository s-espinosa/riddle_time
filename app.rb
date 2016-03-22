require 'sinatra'

class NotNerdyApp < Sinatra::Base

  get "/" do
    "Would you like to play a game?"
  end

  post "/" do
    if params[:answer] == "yes"
      redirect "/something"
    else
      "You should give us your 'answer'"
    end
  end

  get "/something" do
    "Now show me how to 'put' your 'name' down"
  end

  put "/something" do
    if params[:name]
      redirect "/next_thing"
    else
      ""
    end
  end

  get "/next_thing" do
    "Come far you have... 'patch' the 'force'"
  end

  patch "/force" do
    if params[:force]
      redirect "/meteor"
    end
  end

  get "/meteor" do
    "A meteor is coming crashing to the earth... what should you do..."
  end

  delete "/meteor" do
    "You win - Thanks for playing!"
  end


end
