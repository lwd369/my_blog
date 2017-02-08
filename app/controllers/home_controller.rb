class HomeController < ApplicationController
  def index
    @blogs = Blog.all    
    puts @blogs.length
  end
end
