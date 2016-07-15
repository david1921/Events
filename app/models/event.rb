class Event < ActiveRecord::Base

  def self.last_n_events n 
      Event.last(n).reverse 
  end

  def self.last_n_events_for_specific_host host, n
      Event.where(:hostname=>host).last(n).reverse 
  end

end
