class IssPassTimesWorker
  include Sidekiq::Worker

  def perform(location_id)
    location = Location.find(location_id)
    response = HTTParty.get("http://api.open-notify.org/iss-pass.json?lat=#{location.latitude}&lon=#{-(location.longitude)}&n=#{IssPassTime::FORWARD_DURATION}")["response"]
    location.iss_pass_times.create(response)
  end
end