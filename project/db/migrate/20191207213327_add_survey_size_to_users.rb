class AddSurveySizeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :survey_size, :integer
  end
end
