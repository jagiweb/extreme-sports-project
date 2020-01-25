class EventsController < ApplicationController
    # before_filter :authorize
    def ticket

    end

    def location
        @event = find_by(params[:id])
    end
    def index
        @events = Event.all
    end

    def new
        if current_user.admin == true
        @event = Event.new
        else
            redirect_to events_path
        end
    end
    
    def create

        if current_user.admin == true
            @event = Event.create(event_params)
            redirect_to @event
        else
            redirect_to sports_path
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
        params.require(:event).permit(:location_id, :sport_id, :day_type_id, :date)
    end
end
