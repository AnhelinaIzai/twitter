class TwittsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  before_action :find_twitt, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @twitt = Twitt.new
  end

  def create
    @twitt = current_user.twitts.build(twitt_params)
    if @twitt.save
      redirect_to twitt_path(@twitt.id)
    else
      render 'new'
    end
  end


  def show
  end

  def edit

  end

  def update
    if @twitt.update
      redirect_to twitt_path(@twitt.id)
    else
      render 'edit'
    end
  end

  def destroy
    @twitt.destroy
    redirect_to root_path
  end
  private
  def find_twitt
    @twitt = Twitt.find(params[:id])
  end

  def twitt_params
      params.require(:twitt).permit(:user_id, :title, :body, {photos: []})
    end
end
