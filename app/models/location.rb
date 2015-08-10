require 'csv'
class Location < ActiveRecord::Base

  has_many :iss_pass_times, dependent: :destroy

  def self.import_from_csv
    # Read file from file system
    csv_data = File.read('data/locations.csv')

    # Parse CSV data from given file
    rows = CSV.parse(csv_data, :headers => true)

    # Create location records
    rows.each do |row|
      location = find_by_id(row["Rank"]) || new
      location.latitude, location.longitude = row["Coordinates"].split("/").first.split
      location.name = row["Mountain"]
      location.save!
    end
  end
end
