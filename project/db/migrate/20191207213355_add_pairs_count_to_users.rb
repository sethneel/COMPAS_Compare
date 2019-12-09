class AddPairsCountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :pairs_count, :integer
  end
end
