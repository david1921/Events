class EventsController < ApplicationController

  def index

  	 #last n events for an org
  	 @n_events = Event.last_n_events 2
    
     #last n events fir specific host
     @n_specific_events = Event.last_n_events_for_specific_host "localhost", 5

     #register host event of in-coming request
     register_event
  end

  def register_event
  	 hostname = request.domain
     @events = Event.new(:hostname=>hostname)
     @events.save
  end
  
end
