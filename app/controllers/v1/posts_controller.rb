# frozen_string_literal: true

module V1
  class PostsController < ApiController
    def index
      @posts = Post.all
      render json: @posts
    end
  end
end