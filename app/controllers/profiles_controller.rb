class ProfilesController < ApplicationController
  before_action :authenticate_user!
    before_action :find_profile, only: [:show, :edit, :update]

  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)
   if @profile.save
     flash[:notice] = "profile successfully created"
     redirect_to profile_path(@profile.id)
   else
     flash[:error] = "profile has error with created"
     render 'new'
   end
  end

  def show

  end

  def edit
    @profile = current_user.profile
  end

  def update
    if @profile.update(profile_params)
     flash[:notice] = "profile successfully edited"
     redirect_to profile_path(@profile.id)
   else
     flash[:error] = "profile has error with edited"
     render 'edit'
   end
  end
  private
def profile_params
  params.require(:profile).permit(:user_id, :nickname, :age, :avatar);
end
def find_profile
  @profile = Profile.find(params[:id])
end
end
