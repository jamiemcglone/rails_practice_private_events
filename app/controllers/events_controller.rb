class EventsController < ApplicationController

    def index
        @events = Event.all
    end

    def new 
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)

        if @event.save
          flash[:success] = "Event '#{@event.title}' created!"
          redirect_to '/events'
        else
          flash[:alert] = "Some error!"
          render 'new'
        end
    end

    def show
        @event = Event.find(params[:id])
    end

    def event_params
        params.require(:event).permit(:title, :date, :user_id, :description)
    end
end
