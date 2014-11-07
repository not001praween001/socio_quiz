class UsersController < ApplicationController
  before_filter :authenticate_user!

  def show
    @plays = Play.where(user_id: current_user.id)
    respond_to do |format|
        format.html # show.html.erb
        format.json { render :json => @plays }
    end
  end
end