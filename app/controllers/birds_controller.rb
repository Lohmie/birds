class BirdsController < ApplicationController
    def create
        @bird = Bird.new(bird_params)
        @bird.save
        redirect_to root_path
    end

    def index
        @birds = Bird.all
    end

    def new
        @bird = Bird.new
    end
    
    private
    
    def bird_params
        params.require(:bird).permit( :saying, :author)
    end
end
