class Post < ActiveRecord::Base
  validates :title, presence: true,
                    length: {minimum: 1}
  validates :text, presence: true,
                    length: {minimum: 1}
end

#the above makes sure that title and text are filled out
