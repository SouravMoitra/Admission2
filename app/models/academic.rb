class Academic < ActiveRecord::Base
  # Academic information belongs to a particular user
  belongs_to :users
  # validations
  validates :tenth_year_pass, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 2000, less_than_or_equal_to: 2012}
  validates :tenth_board, presence: true, length: { maximum: 5}
  validates :tenth_marks_percent, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :hs_year_pass, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 2002, less_than_or_equal_to: 2014}
  validates :hs_board, presence: true, length: { maximum: 5}
  validates :hs_marks_percent, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :tenth_roll, presence: true
  validates :hs_roll, presence: true
end
