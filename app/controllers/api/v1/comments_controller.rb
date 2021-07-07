class Api::V1::CommentsController < ApplicationController
    
    skip_before_action :logged_in?, only: [:index, :read]

    def index
        comments = Comment.all
        render json: comments
    end

end
