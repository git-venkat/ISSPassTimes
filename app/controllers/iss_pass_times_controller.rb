class IssPassTimesController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
    @iss_pass_times = @location.iss_pass_times
  end
end