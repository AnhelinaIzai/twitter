class TwittsController < ApplicationController
  before_action :authenticate_user!, except:[:index, :show]
  before_action :find_twitt, only:[:show, :edit, :update, :destroy]

  def index
    @user = User.find_by(id: params[:id])
    @twitt = Twitt.new
    @twitts = Twitt.paginate(:page => params[:page], :per_page => 5).order('id DESC')\
  end

  def new
    @twitt = Twitt.new
  end

  def create
    @twitt = current_user.twitts.build(twitt_params)
    if @twitt.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  def show
  end

  def edit

  end

  def update
    if @twitt.update(twitt_params)
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
      params.require(:twitt).permit(:user_id, :body, {photos: []})
  end
end
