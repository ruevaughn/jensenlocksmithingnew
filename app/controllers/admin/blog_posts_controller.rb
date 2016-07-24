class Admin::BlogPostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

end
