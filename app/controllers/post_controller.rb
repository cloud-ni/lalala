class PostController < ApplicationController
    def index
        @post=Post.all
    end
    def create
        @post=Post.new
        @post.title=params[:title]
        @post.content=params[:content]
        @post.save
        redirect_to '/post/index'
    end
  
end
