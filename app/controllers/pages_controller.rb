class PagesController < ApplicationController
  def index
    @twitts = Twitt.all
  end
end
