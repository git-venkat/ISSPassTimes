class IssPassTime < ActiveRecord::Base
  FORWARD_DURATION = 10

  belongs_to :location

  # Load ISS Pass times
  def self.load_iss_pass_times
    Location.all.each do |location|
      IssPassTimesWorker.perform_async(location.id)
    end
  end
end
