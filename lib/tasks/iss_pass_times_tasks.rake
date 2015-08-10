desc 'fetch ISS pass times'

task fetch_iss_pass_times: :environment do
  IssPassTime.load_iss_pass_times
end