class Category < ActiveRecord::Base
  # validation
  validates_presence_of :name
  validates_numericality_of :budget
  validates :budget, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :monthly, inclusion: { in: [true, false] }
end
