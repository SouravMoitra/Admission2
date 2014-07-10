class Cutoff < ActiveRecord::Base
  # each cuttoff belongs to stream
  belongs_to :stream
end
