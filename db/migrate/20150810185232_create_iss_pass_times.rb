class CreateIssPassTimes < ActiveRecord::Migration
  def change
    create_table :iss_pass_times do |t|
      t.float :duration
      t.float :risetime

      t.timestamps
    end
  end
end
