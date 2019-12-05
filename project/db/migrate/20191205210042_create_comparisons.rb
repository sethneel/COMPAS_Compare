class CreateComparisons < ActiveRecord::Migration[6.0]
  def change
    create_table :comparisons do |t|
      t.references :user, null: false, foreign_key: true
      t.references :record_1
      t.references :record_2
      t.integer :choice
      t.timestamps
    end
    add_foreign_key :comparisons, :records, column: :record_1_id, primary_key: :id
    add_foreign_key :comparisons, :records, column: :record_2_id, primary_key: :id
  end
end
