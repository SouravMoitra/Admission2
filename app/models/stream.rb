class Stream < ActiveRecord::Base
  #stream has multiple cuttoff one for each category
  has_many :cutoff
  belongs_to :subject_stream
end
