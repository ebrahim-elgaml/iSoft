
class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :categories, :through => :links
  validates :title, presence: true,
                    length: { minimum: 5 }

  validates :text, presence: true

  belongs_to :user
end

              

