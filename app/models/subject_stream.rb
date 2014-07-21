class SubjectStream < ActiveRecord::Base
  has_many :stream,dependent: :destroy
end
