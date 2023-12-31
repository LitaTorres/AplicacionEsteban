class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :publications
  has_and_belongs_to_many :postulations
  has_one_attached :photo

  enum :role, [:user, :admin]

end
