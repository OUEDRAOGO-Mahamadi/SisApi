class PaysRegion < ApplicationRecord
  belongs_to :pay
  belongs_to :region
end
