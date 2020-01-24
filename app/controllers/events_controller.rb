class EventsController < ApplicationController
    # before_filter :authorize
    def ticket

    end

    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end
    
    def create
        if current_user.admin == true
            @event = Event.create(event_params)
            redirect_to events_path
        else
            redirect_to users_path
        end
    end

    def show
        @event = Event.find(params[:id])
    end

    def edit
        if current_user.admin == nil
            @event = Event.find(params[:id])
        else
          redirect_to sports_path
        end
    end

    def update
        if current_user.admin == true
            @event = Event.find(params[:id])
            @event.update(params[:id])
            redirect_to @event
        else
            redirect_to events_path
        end
    end

    def destroy
        if current_user.admin == true
            @event = Event.find(params[:id])
            @event.destroy
            redirect_to events_path
        else
            redirect_to events_path
        end
    end

    private

    def event_params
        params.require(:event).permit(:date, :sport_id)
    end
end
