class SidebarController < ApplicationController
  before_filter :get_featured_event



  protected
  def get_featured_event
    @featured_event = Event.first
  end
end
