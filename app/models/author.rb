class Author < ApplicationRecord
  has_many :articles

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true , uniqueness: true

end
