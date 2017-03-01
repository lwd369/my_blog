class Admin::DashboardController < ApplicationController
  before_action :require_login

  def index
    render text: 'admin'
  end
end