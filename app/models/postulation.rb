class Postulation < ApplicationRecord
  belongs_to :publication
  has_and_belongs_to_many :users
end
