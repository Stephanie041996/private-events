class UsersController < ApplicationController
  def new; end

  def create; end

  def show
    @events = Event.all
    @created_events = current_user.events
    @past_events = current_user.attended_events.past
    @future_events = current_user.attended_events.future 
  end

  def index; end
end
