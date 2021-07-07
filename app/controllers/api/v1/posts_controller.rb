class Api::V1::PostsController < ApplicationController

    skip_before_action :logged_in?, only: [:index, :read]

    def index
        posts = Post.all
        render json: posts
    end
    
end
