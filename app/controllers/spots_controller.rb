class SpotsController < ApplicationController

def index
@event = Event.find(params[:event_id])
@event_spots = @event.spots
render json: @event_spots

end


def create
@user_id = User.find_by(name: params[:user_id]).id
@event_id = Event.find(params[:event_id].to_i).id

new_spot = Spot.create(event_id: @event_id, user_id: @user_id)
@event = Event.find(params[:event_id])
@event_spots = @event.spots
render json: @event_spots
end



end
