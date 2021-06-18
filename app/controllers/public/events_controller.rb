class Public::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  private
  def event_params
    params.require(:event).permit(:festival, :place, :period)
  end

end
