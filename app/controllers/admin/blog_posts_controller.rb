class Admin::BlogPostsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @blog_posts = BlogPost.all.order(created_at: "desc")
  end

  def new
    @blog_post = BlogPost.new
  end

  def edit
    @blog_post = BlogPost.find(params[:id])
  end

  def update
    @blog_post = BlogPost.find(params[:id])

    if @blog_post.update_attributes(blog_post_params)
      flash[:notice] = "Blog Post successfully updated"
      redirect_to admin_blog_posts_path
    else
    end
  end

  def create
    @blog_post = BlogPost.create(blog_post_params)
    if @blog_post.valid?
      flash[:notice] = "Blog Post successfully created."
      redirect_to admin_blog_posts_path
    else
    end

  end

  def destroy
    BlogPost.find(params[:id]).destroy
    redirect_to admin_blog_posts_path
  end

  private

  def blog_post_params
    params.require(:blog_post).permit(:header, :body)
  end

end
