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
  validates :sub1, presence: true, length: { maximum: 20}
  validates :sub1_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub2, presence: true, length: { maximum: 20}
  validates :sub2_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub3, presence: true , length: { maximum: 20}
  validates :sub3_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub4, presence: true, length: { maximum: 20}
  validates :sub4_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub5, presence: true, length: { maximum: 20}
  validates :sub5_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub6, presence: true, length: { maximum: 20}
  validates :sub6_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub7, presence: true, length: { maximum: 20}
  validates :sub7_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :sub8, presence: true, length: { maximum: 20}
  validates :sub8_marks, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 100}
  validates :subject_streams_id, presence: true
end
