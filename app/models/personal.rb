class Personal < ActiveRecord::Base
  # every personal information belongs to a particular user
  belongs_to :user
  # carrierwave uploader
  mount_uploader :avatar, AvatarUploader
  # validations
  validates :first_name, presence: true, length: { maximum: 24}
  validates :middle_name, presence: true, length: { maximum: 24}
  validates :last_name, presence: true, length: { maximum: 24}
  validates :date_of_birth, presence: true
  validates :gender, presence: true, length: { maximum: 1}
  validates :category_id, presence: true
  validates :blood_group, presence: true, length: { maximum: 2}
  validates :fathers_name, presence: true, length: { maximum: 24}
  validates :mothers_name, presence: true, length: { maximum: 24}
  validates :avatar, presence: true
  end
