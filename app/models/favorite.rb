class Favorite < ApplicationRecord
  belongs_to :office
  belongs_to :user
end
