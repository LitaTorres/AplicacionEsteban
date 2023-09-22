class Publication < ApplicationRecord
  belongs_to :user
  has_many :postulations
  has_many_attached :images
end
