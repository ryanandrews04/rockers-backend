class Api::V1::PostsController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :read]

    def index
        posts = Post.all
        render json: posts
    end

    def show
        post = Post.find(params[:id])
        render json: post
    end

    def create
        post = Post.new(posts_params)
        if post.valid?
            post.save
            render json: post
        else 
            render json: {errors: post.errors.full_messages}, status: 422
        end
        
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
        render json: {message: "Post deleted"}
    end

    def update
        post = Post.find(params[:id])
        post.update(posts_params)
        render json: post
    end

    private

    def posts_params
        params.permit(:user_id, :title, :text, :image)
    end

end
