class Post < ActiveRecord::Base
  has_many :comments
  validates :title, presence: true,
                    length: {minimum: 1}
  validates :text, presence: true,
                    length: {minimum: 1}
end

#the above makes sure that title and text are filled out

# has_many comments here is what allows me to do @article.comments
