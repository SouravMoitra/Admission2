class Stream < ActiveRecord::Base
  #stream has multiple cuttoff one for each category
  has_many :cutoff
end
