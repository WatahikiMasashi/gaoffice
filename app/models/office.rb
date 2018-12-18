class Office < ApplicationRecord
  has_many :favorites, dependent: :destroy
  belongs_to :agent
end
