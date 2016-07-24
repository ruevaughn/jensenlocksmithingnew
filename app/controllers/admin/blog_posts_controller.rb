class Admin::BlogPostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    @blog_post = BlogPost.create(blog_post_params)
    if @blog_post.valid?
      flash[:notice] = "Blog Post successfully created."
      redirect_to admin_blog_posts_path
    else
    end

  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:header, :body)
  end

end
