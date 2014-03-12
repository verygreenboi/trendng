class Dashboard::UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource :only => [:index, :show, :new]
  # include ActionController::Live
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    authorize! :update, @user, :message => "Not authorized as an administrator"
    user = User.find(params[:id])
    if user.update_attributes(user_params, :as => :admin)
      redirect_to dashboard_users_path, :notice => "User updated."
    else
      redirect_to dashboard_users_path, :alert => "User update failed."
    end
  end

  def destroy
    authorize! :update, @user, :message => "Not authorized as an administrator"
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to dashboard_users_path, :notice => "User removed."
    else
        redirect_to dashboard_users_path, :alert => "You can't delete yourself."
    end
  end

  def invite
    authorize! :invite, @user, :message => "Not authorized as an administrator"
    user = User.find(params[:id])
    user.send_confirmation_instructions
    redirect_to dashboard_users_path, :only_path => true, :notice => "Invitation Sent to #{user.email}"
  end

  def bulk_invite
    authorize! :bulk_invite, @user, :message => "Not authorized as an administrator"
    users = User.where(:confirmation_token => nil).order(:created_at).limit(params[:quantity])
    count = users.count
    users.each do |user|
      user.send_confirmation_instructions
    end
    redirect_to dashboard_users_path, :only_path => true, :notice => "Sent invitations to #{count} users."
  end

  private
    def user_params
      params.require(:user).permit!  
    end
end
