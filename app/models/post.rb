class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy #now I can delete posts that have comments
  validates :color, presence: true
  validates :title, presence: true,
                    length: {minimum: 1}
  validates :text, presence: true,
                    length: {minimum: 1}
  belongs_to :user
end

#the above makes sure that title and text are filled out

# has_many comments here is what allows me to do @article.comments
