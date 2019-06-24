class BlogPostsController < ApplicationController
  def new
  end

  def create 
    @blog_post = BlogPost.new(params[:blog_post])

    @blog_post.save
    redirect_to @blog_post
  end
end
