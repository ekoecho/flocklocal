class PagesController < ApplicationController
  before_filter :get_featured_event 
  def home
    @events = Event.all
  end
  
  def about

  end

  def first_flock

  end

  def success_stories
    
  end


  protected

  def get_featured_event
    @featured_event = Event.first
  end

end
