class Admin::DashboardController < ApplicationController
  before_action :require_login

  def index
    redirect_to new_admin_blog_path
  end
end