class SportsController < ApplicationController
    def index
        @sports = Sport.all
    end

    def new
        @sport = Sport.new
    end
    
    def create
        if current_user.admin == true
            @sport = Sport.create(sport_params)
            redirect_to @sport
        else
            redirect_to users_path
        end
    end

    def sport_image
      @sport = Sport.find(params[:id]).main_image
    end

    def show
        @sport = Sport.find(params[:id])
    end

    def edit
        @sport = Sport.find(params[:id])
        
    end

    def update
        @sport = Sport.find(params[:id])
        @sport.update(sport_params)
        redirect_to @sport
    end

    def destroy
        @sport = Sport.find(params[:id])
        @sport.destroy
        redirect_to sports_path
    end

    private

    def sport_params
        params.require(:sport).permit(:name, :description, :price_per_person)
    end
end
