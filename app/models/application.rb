class Application < ActiveRecord::Base
  # application belongs to a user
  belongs_to :user
end
