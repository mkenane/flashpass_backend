class EventsController < ApplicationController

  def index
    render json: @events = Event.all

  end
end
