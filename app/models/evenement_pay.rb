class EvenementPay < ApplicationRecord
  belongs_to :pay
  belongs_to :evenement
end
