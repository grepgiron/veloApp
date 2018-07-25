class Package < ApplicationRecord
  belongs_to :carrier
  belongs_to :client
  belongs_to :located
end
