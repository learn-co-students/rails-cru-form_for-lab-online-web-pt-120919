class Artist < ApplicationRecord
    belongs_to :artist
    has_many :song 
end
