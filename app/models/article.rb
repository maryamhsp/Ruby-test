class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  belongs_to :author

  def author_full_name
    "#{author.firstname} #{author.lastname}"
  end

end
