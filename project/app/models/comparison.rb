class Comparison < ApplicationRecord
  belongs_to :record_1, :class_name => 'Record'
  belongs_to :record_2, :class_name => 'Record'
  belongs_to :user
end
