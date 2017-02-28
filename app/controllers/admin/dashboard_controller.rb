class Admin::DashboardController < ApplicationController
  def index
    render text: 'admin'
  end
end