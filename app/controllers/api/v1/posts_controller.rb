class Api::V1::PostsController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :read]

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.new(posts_params)
        if post.valid?
            post.save
            render json: post
        else 
            render json: {errors: post.errors.full_messages}, status: :unprocessable_entity
        end
        
    end

    private

    def posts_params
        params.permit(:user_id, :title, :text, :image)
    end

end
