class PagesController < ApplicationController
  def index
    @twitts = Twitts.all
  end
end
