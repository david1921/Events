require 'spec_helper'

describe Event  do 

	context "test for n events" do 
     
     it "should return n events" do
         n_events = Event.last_n_events 2
         expect(n_events.size).to be 2
     end

     it "should return n events for specific host" do 
         n_specific_events = Event.last_n_events_for_specific_host "localhost", 2
         hostname =  n_specific_events.first.hostname
         expect(n_specific_events.size).to be 2
         expect(hostname).to eq "localhost"
     end

	end

end