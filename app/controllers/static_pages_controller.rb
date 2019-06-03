class StaticPagesController < ApplicationController
    def home
      @posts = Post.newest.limit 6
    end

    def help; end

    def about; end

    def contact; end
end
