class AddLocationIdToIssPassTimes < ActiveRecord::Migration
  def change
    add_column :iss_pass_times, :location_id, :integer
  end
end
