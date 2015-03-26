class StandupsController < ApplicationController

  def index
    @standups = Standup.all
  end

  def new
    @standup = Standup.new
    10.times { @standup.standup_attendees.build }
  end

  def create
    @standup = Standup.new(standup_params)
    @standup.save

    redirect_to standups_path
  end

  def standup_params
    params.permit!
  end
end
