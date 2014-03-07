class HomeController < ApplicationController
	layout "application"
  def index
  	@user = User.new
  end
end
